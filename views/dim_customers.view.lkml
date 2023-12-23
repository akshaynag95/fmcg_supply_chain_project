view: dim_customers {
  sql_table_name: `@{PROJECT}.@{DATASET}.dim_customers` ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;

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
        Customer Name: {{customer_name._value}}
        City: {{city._value}}
        On Time: {{fact_orders_aggregate.on_time_delivery_percentage._value}}
        In Full: {{fact_orders_aggregate.in_full_delivery_percentage._value}}
        On Time In Full: {{fact_orders_aggregate.on_time_in_full._value}}"
      }
    }
  }
}
