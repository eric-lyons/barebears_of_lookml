view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  parameter: string {
    type: string
  }

  measure: count_new {
    type: count_distinct
    sql: ${id} ;;
    filters: [id: "NOT 1"]
  }

  dimension_group: current {
    type: time
    datatype: date
    timeframes: [date,raw]
    sql: curdate() ;;
  }
  dimension: day {
    type: number
    sql: DAYOFMONTH(${current_raw}) ;;
  }

  dimension: first_day_of_month {
    type: date
    sql: DATE_SUB(${current_raw}, INTERVAL ${day}-1 DAY) ;;
  }

  dimension: date_diff {
    type: yesno
    sql: DATEDIFF( ${created_date}, ${first_day_of_month}) < ${day} - 1 AND DATEDIFF( ${created_date}, ${first_day_of_month}) > 0 ;;
  }


  filter: reporting_date {
    label: "Reporting Date Filter"
    description: "Rerpoting date filter"
    type: date
  }

  dimension: date_group_charts {
    label: "Date Grouping"
    type: string
    sql:
    {% if allowed_date_ranges._parameter_value == "'Last Quarter'" %}
    ${created_month}
    {% elsif allowed_date_ranges._parameter_value == "'Custom'" %}
   ${created_month}
    {% else %}
   ${created_date}
    {% endif %}
    ;;
    html:
   {% if allowed_date_ranges._parameter_value == "'Last Quarter'" %}
    {{ rendered_value | append: "-01" | date: "%b" }}
    {% elsif allowed_date_ranges._parameter_value == "'Custom'" %}
    {{ rendered_value | append: "-01" | date: "%b" }}
    {% else %}
    {{ rendered_value | date: "%b %d" }}
    {% endif %}
    ;;
  }

  parameter: allowed_date_ranges {
    type: string
    allowed_value: {
      value: "Yesterday"
      label: "Yesterday"
    }
    allowed_value: {
      value: "Two Days Ago"
      label: "Two Days Ago"
    }
    allowed_value: {
      value: "Last 7 Days"
      label: "Last 7 Days"
    }
    allowed_value: {
      value: "Last 30 Days"
      label: "Last 30 Days"
    }
    allowed_value: {
      value: "This Week"
      label: "This Week"
    }
    allowed_value: {
      value: "Last Week"
      label: "Last Week"
    }
    allowed_value: {
      value: "This Month"
      label: "This Month"
    }
    allowed_value: {
      value: "Last Month"
      label: "Last Month"
    }
    allowed_value: {
      value: "This Quarter"
      label: "This Quarter"
    }
    allowed_value: {
      value: "Last Quarter"
      label: "Last Quarter"
    }
    allowed_value: {
      value: "Custom"
      label: "Custom"
    }
  }




  parameter: date {
    type: number
    allowed_value: {label: "5 days ago" value: "5"}
    allowed_value: {label: "4 days ago" value: "4"}
    allowed_value: {label: "3 days ago" value: "3"}
    allowed_value: {label: "2 days ago" value: "2"}
    allowed_value: {label: "1 days ago" value: "1"}
  }

  dimension: date_field_relative {
    type: date
    sql: DATE_SUB(CURDATE(), INTERVAL {% parameter date %} DAY) ;;
  }


  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;

  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: UNIX1 {
    sql: UNIX_TIMESTAMP(DATE_ADD(${created_raw},INTERVAL 10 DAY)) ;;
    type: number
  }

  dimension: UNIX2 {
    type: number
    sql: UNIX_TIMESTAMP(${created_date}) ;;
  }

  measure: operator {
    type: string
    sql: 1=1 ;;
    html:    {% if UNIX1._value <= UNIX2._value %}

                    "Hello"

                  {% else %}

                  "good bye"

                  {% endif %} ;;


  }

  parameter: date_param {
    type: date
  }

  dimension: dimension_day1 {
    type: date
    sql: {% parameter  date_param %} ;;
  }

  dimension: dimension_day2 {
    type: date
    sql: DATE_ADD(${dimension_day1}, INTERVAL -1 DAY);;
  }

  dimension: yesno_day1 {
    type: yesno
    sql: ${created_date} = ${dimension_day1} ;;
  }

  dimension: yesno_day2 {
    type: yesno
    sql: ${created_date} = ${dimension_day2} ;;
  }

  measure: measure_day1 {
    type: count
    filters: [yesno_day1: "yes"]
  }

  measure: measure_day2 {
    type: count
    filters: [yesno_day2: "yes"]
  }

  dimension: eric_order {
    type: string
    sql: CASE WHEN ${status} = "pending" THEN "1. Pending"
              WHEN ${status} = "cancelled" THEN "2. Canceled"
              WHEN ${status} = "complete" THEN "3. Completed"
              END ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    }
    # html:
    # {% if value < 100 %}
    # <div class="vis" style="width: 400px; background-color: #808080; border: 2px solid #000;
    # border-radius: 15px; -moz-border-radius: 15px">

    # <div class="vis-single-value" style="background-color: red; font-color:white; width: 200px; border: 2px solid #000;
    # border-radius: 15px; -moz-border-radius: 15px;">{{ rendered_value }}</div></div>

    # {% elsif value >1000 %}
    # <div class="vis" style="width: 400px; background-color:#808080; border: 2px solid #000;
    # border-radius: 15px; -moz-border-radius: 15px">
    # <div class="vis-single-value" style="background-color: blue; font-color:white; width: 300px;  border: 2px solid #000;
    # border-radius: 15px; -moz-border-radius: 15px;">{{ rendered_value }}
    # </div></div>
    # {% else %}
    # <div class="vis" style="width: 400px; background-color:  #808080; border: 2px solid #000;
    # border-radius: 15px; -moz-border-radius: 15px">
    # <div class="vis-single-value" style="background-color: black; font-color:white;  width: 400px;  border: 2px solid #000;
    # border-radius: 15px; -moz-border-radius: 15px;">{{ rendered_value }}
    # </div></div>
    # {% endif %};;

}
