connection: "supply-chain-twin-349311"

include: "/views/*.view.lkml"
include: "/dashboards/fmcg_supply_chaindelivery_analysis.dashboard.lookml"
include: "/dashboards/fmcg_supply_chainorder_lines_analysis.dashboard.lookml"

# include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

explore: fact_order_lines {
  label: "Order Lines"
  join: dim_customers {
    type: left_outer
    relationship: one_to_many
    sql_on: ${dim_customers.customer_id} = ${fact_order_lines.customer_id} ;;
  }

  join: dim_date {
    type: left_outer
    relationship: one_to_many
    sql_on: ${dim_date.date_date} = ${fact_order_lines.order_date} ;;
  }

  join: dim_products {
    type: left_outer
    relationship: one_to_many
    sql_on: ${dim_products.product_id} = ${fact_order_lines.product_id} ;;
  }

  join: dim_targets_orders {
    type: left_outer
    relationship: one_to_many
    sql_on: ${dim_targets_orders.customer_id} = ${fact_order_lines.customer_id} ;;
  }
}

explore: fact_orders_aggregate {
  label: "Orders Aggregate"
  join: dim_customers {
    type: left_outer
    relationship: one_to_many
    sql_on: ${dim_customers.customer_id} = ${fact_orders_aggregate.customer_id} ;;
  }

  join: dim_date {
    type: left_outer
    relationship: one_to_many
    sql_on: ${dim_date.date_date} = ${fact_orders_aggregate.order_placement_date} ;;
  }

  join: dim_targets_orders {
    type: left_outer
    relationship: one_to_many
    sql_on: ${dim_targets_orders.customer_id} = ${fact_orders_aggregate.customer_id} ;;
  }
}
