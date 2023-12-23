view: fact_orders_aggregate {
  sql_table_name: `@{PROJECT}.@{DATASET}.fact_orders_aggregate` ;;
  drill_fields: [order_id, dim_customers.customer_name, dim_customers.city, in_full, on_time, otif]

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  dimension: in_full {
    type: number
    sql: ${TABLE}.in_full ;;
  }
  dimension: on_time {
    type: number
    sql: ${TABLE}.on_time ;;
  }
  dimension: order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.order_id ;;

    # creating action button to take action on looker dashboard
    # URL: https://cloud.google.com/looker/docs/reference/param-field-action?version=23.18&lookml=new
    action: {
      label: "Action on Email"
      url: "https://hooks.zapier.com/hooks/catch/11814505/bryrebp/"

      form_param: {
        name: "Heading"
        type: string
        default: "Lets connect on this"
      }

      form_param: {
        name: "Description"
        type: textarea
        default: "Details#
        Order Id: {{fact_orders_aggregate.order_id._value}}
        Order Date: {{order_placement_date._value}}
        Customer Name: {{dim_customers.customer_name._value}}
        City: {{dim_customers.city._value}}"
      }
    }
  }
  dimension_group: order_placement {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_placement_date ;;
  }
  dimension: otif {
    type: number
    sql: ${TABLE}.otif ;;
  }
  measure: total_orders {
    type: count_distinct
    sql: ${TABLE}.order_id ;;
  }
  measure: total_orders_on_time {
    type: count_distinct
    sql: ${TABLE}.order_id ;;
    filters: [on_time: "1"]
  }
  measure: total_orders_in_full {
    type: count_distinct
    sql: ${TABLE}.order_id ;;
    filters: [in_full: "1"]
  }
  measure: total_orders_on_time_in_full {
    type: count_distinct
    sql: ${TABLE}.order_id ;;
    filters: [otif: "1"]
  }
  measure: on_time_delivery_percentage {
    label: "On Time Delivery %"
    type: number
    sql: SUM(${on_time})/${total_orders} ;;
    value_format_name: percent_1
    drill_fields: [ot_if_otif_drills*]
  }
  measure: in_full_delivery_percentage {
    label: "In Full Delivery %"
    type: number
    sql: SUM(${in_full})/${total_orders} ;;
    value_format_name: percent_1
    drill_fields: [ot_if_otif_drills*]
  }
  measure: on_time_in_full {
    label: "On Time In Full %"
    type: number
    sql: SUM(${otif})/${total_orders} ;;
    value_format_name: percent_1
    drill_fields: [ot_if_otif_drills*]
  }
  set: ot_if_otif_drills {
    fields: [dim_customers.customer_name,
      dim_customers.city,
      on_time_delivery_percentage,
      in_full_delivery_percentage,
      on_time_in_full]
  }
}
