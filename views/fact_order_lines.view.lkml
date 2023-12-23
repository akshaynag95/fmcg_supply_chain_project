view: fact_order_lines {
  sql_table_name: `@{PROJECT}.@{DATASET}.fact_order_lines` ;;
  drill_fields: [order_id, dim_customers.customer_name, dim_customers.city, dim_products.product_name, delivery_qty, in_full, on_time, on_time_in_full]

  dimension_group: actual_delivery {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.actual_delivery_date ;;
  }
  dimension_group: agreed_delivery {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.agreed_delivery_date ;;
  }

  dimension: unique_id {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.order_id,"-", ${TABLE}.customer_id, "-", ${TABLE}.product_id) ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  dimension: delivery_qty {
    type: number
    sql: ${TABLE}.delivery_qty ;;
  }
  dimension: in_full {
    type: number
    sql: ${TABLE}.In_Full ;;
  }
  dimension: on_time {
    type: number
    sql: ${TABLE}.On_Time ;;
  }
  dimension: on_time_in_full {
    type: number
    sql: ${TABLE}.On_Time_In_Full ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
  }
  dimension: order_id {
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
        Order Id: {{order_id._value}}
        Order Date: {{order_date._value}}
        Customer Name: {{dim_customers.customer_name._value}}
        City: {{dim_customers.city._value}}
        Product: {{dim_products.product_name._value}}
        Quantity: {{order_qty._value}}"
      }
    }
  }
  dimension: order_qty {
    type: number
    sql: ${TABLE}.order_qty ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }
  measure: total_order_lines {
    type: count_distinct
    sql: ${TABLE}.order_id ;;
  }

  measure: total_orders {
    type: count_distinct
    sql: ${TABLE}.order_id ;;
    drill_fields: [order_id, order_date, dim_customers.customer_name, dim_customers.city, dim_products.product_name, delivery_qty,
      on_time, in_full, on_time_in_full]
  }

  measure: total_order_lines_shipped_in_full {
    type: count_distinct
    sql: ${TABLE}.order_id ;;
    filters: [in_full: "1"]
  }

  measure: line_fill_rate {
    label: "LIFR%"
    type: number
    sql: ${total_order_lines_shipped_in_full}/${total_order_lines} ;;
    value_format_name: percent_1
    drill_fields: [LIFR_VOFR_drills*]
  }

  measure: volume_fill_rate {
    label: "VOFR%"
    type: number
    sql: SUM(${delivery_qty})/SUM(${order_qty}) ;;
    value_format_name: percent_1
    drill_fields: [LIFR_VOFR_drills*]
  }

  measure: lead_time {
    type: average
    sql: date_diff(${actual_delivery_date}, ${order_date}, DAY) ;;
    value_format: "0"
  }

  set: LIFR_VOFR_drills {
    fields: [dim_customers.customer_name,
      dim_customers.city,
      dim_products.product_name,
      line_fill_rate,
      volume_fill_rate
      ]
  }
}
