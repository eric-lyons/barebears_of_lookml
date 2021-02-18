connection: "thelook"

# include all the views
include: "/views/**/*.view"

datagroup: eric_likes_bears_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}




###HELLO

explore: NJ_TEST {}

explore: pivot_ndt {}

persist_with: eric_likes_bears_default_datagroup

explore: connection_reg_r3 {}

explore: TIME_TEST {}

# explore: events {
#   join: users {
#     type: left_outer
#     view_label: "Events"
#     sql_on: ${events.user_id} = ${users.id} ;;
#     relationship: many_to_one
#   }
#   sql_always_where: {% date_start events.date_filter %} = ${users.created_date} ;;
# }

explore: flights {}

explore: imgsrc1onerroralert2 {}

explore: inventory_items {


}

explore: order_items {
  always_filter: {filters:[users.test_filter: "New^_Jersey, New^_York"]}
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: events {}

# explore: events {
#   view_name: events
#   extends: [order_items]

#   join: users {
#     type: left_outer
#     view_label: "Events"
#     sql_on: ${events.user_id} = ${users.id} ;;
#     relationship: many_to_one
#   }
#   join: orders {
#     sql_on: ${orders.user_id} = ${users.id};;
#     relationship: many_to_one
#   }
#   join: order_items
#   {
#     sql_on: ${order_items.order_id} = ${orders.id};;
#     relationship: many_to_one
#   }
# }

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}


explore: products {}

explore: saralooker {
  join: users {
    type: left_outer
    sql_on: ${saralooker.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: schema_migrations {}

explore: user_data {
  join: users {
    type: left_outer
    sql_on: ${user_data.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

test: order_id_is_unique {
  explore_source: orders {
    column: id {}
    column: count {}
    sorts: [orders.count: desc]
    limit: 1
  }
  assert: order_id_is_unique {
    expression: ${orders.count} = 1 ;;
  }
}

explore: users {
  from: users
  view_name: users
  always_filter: {
    filters: [state: "New Jersey"]
  }
}


explore: extended_users_explore  {
  #fields: [-state]
  extends: [users]
  from: extended_users
  view_name: extended_users
   always_filter: {
    filters: [state: ""]
  }
}
