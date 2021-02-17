view: order_items {
  sql_table_name: demo_db.order_items ;;
  drill_fields: [id]
  view_label: "10"

  parameter: days {
    type: number
    allowed_value: { label: "45 Days ago" value: "45" }
    allowed_value: { label: "30 Days ago" value: "30" }
    allowed_value: { label: "15 Days ago" value: "15" }
    allowed_value: { label: "10 Days ago" value: "10" }
    allowed_value: { label: "all time" value: "3650" }

  }

  dimension: day_to_number {
    type: yesno
    sql: {% parameter days %} >= 20 ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  parameter: pick_dimension {
    allowed_value: { value: "inventory" }
    allowed_value: { value: "order" }
    allowed_value: { value: "price" }
  }

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: dynamic_field {
    type: number
    sql:
    CASE
    WHEN {% parameter pick_dimension %} = 'inventory' THEN ${inventory_item_id}
    WHEN {% parameter pick_dimension %} = 'order' THEN ${order_id}
    WHEN {% parameter pick_dimension %} = 'prce' THEN ${sale_price}
    ELSE NULL
    END ;;

  }

  measure: dynamic_measure {
    type: sum
    sql: ${dynamic_field} ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  filter: test_timezone_filter {
    type: date_time
    convert_tz: no
  }

  dimension_group: returned {
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
    sql: ${TABLE}.returned_at ;;
  }




  dimension: result_date {
    sql:1=1;;
    html:
    {% if orders.created_raw._value < order_items.returned_raw._value  %}
    {{ orders.created_date._value }}
      {% else %}
      {{ order_items.returned_date._value }}
      {% endif %} ;;
  }


  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  dimension: date_yesno {
    type: yesno
    sql: ISNULL(${returned_date}) = 1 ;;
  }

  measure: null_filtered_measure {
    type: count
      filters: {
        field: date_yesno
        value: "yes"
      }
  }

  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
  }
}
