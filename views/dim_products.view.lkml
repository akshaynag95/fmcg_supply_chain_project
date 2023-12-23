view: dim_products {
  sql_table_name: `@{PROJECT}.@{DATASET}.dim_products` ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: product_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.product_id ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
