view: dim_date {
  sql_table_name: `@{PROJECT}.@{DATASET}.dim_date` ;;

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: week_no {
    type: string
    sql: ${TABLE}.week_no ;;
  }
}
