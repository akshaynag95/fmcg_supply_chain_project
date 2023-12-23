view: dim_targets_orders {
  sql_table_name: `@{PROJECT}.@{DATASET}.dim_targets_orders` ;;

  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  dimension: infull_target_ {
    type: number
    sql: ${TABLE}.infull_target_ ;;
  }
  dimension: ontime_target_ {
    type: number
    sql: ${TABLE}.ontime_target_ ;;
  }
  dimension: otif_target_ {
    type: number
    sql: ${TABLE}.otif_target_ ;;
  }
  measure: avg_on_time_target {
    type: average
    sql: ROUND(${TABLE}.ontime_target_,0) ;;
    value_format: "0"
  }
  measure: avg_in_full_target {
    type: average
    sql: ROUND(${TABLE}.infull_target_,0) ;;
    value_format: "0"
  }
  measure: avg_on_time_infull_target{
    type: average
    sql: ROUND(${TABLE}.otif_target_,0) ;;
    value_format: "0"
  }
}
