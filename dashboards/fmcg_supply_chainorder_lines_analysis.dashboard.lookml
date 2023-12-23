---
- dashboard: fmcg_supply_chainorder_lines_analysis
  title: FMCG Supply Chain-Order Lines Analysis
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: pBlPEBZEDf2jqP0Qw9xbA6
  elements:
  - title: Orders Precision Overview
    name: Orders Precision Overview
    model: fmcg_supplychain
    explore: fact_orders_aggregate
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [fact_orders_aggregate.total_orders, fact_orders_aggregate.total_orders_on_time,
      fact_orders_aggregate.total_orders_in_full, fact_orders_aggregate.total_orders_on_time_in_full]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '16'
    orientation: auto
    style_fact_orders_aggregate.total_orders: "#1A73E8"
    show_title_fact_orders_aggregate.total_orders: true
    title_placement_fact_orders_aggregate.total_orders: below
    value_format_fact_orders_aggregate.total_orders: "#,\\K"
    style_fact_orders_aggregate.total_orders_on_time: "#12B5CB"
    show_title_fact_orders_aggregate.total_orders_on_time: true
    title_override_fact_orders_aggregate.total_orders_on_time: Orders Delivered On
      Time
    title_placement_fact_orders_aggregate.total_orders_on_time: below
    value_format_fact_orders_aggregate.total_orders_on_time: "#,\\K"
    show_comparison_fact_orders_aggregate.total_orders_on_time: false
    style_fact_orders_aggregate.total_orders_in_full: "#E52592"
    show_title_fact_orders_aggregate.total_orders_in_full: true
    title_override_fact_orders_aggregate.total_orders_in_full: Orders Delivered in
      Full Quantity
    title_placement_fact_orders_aggregate.total_orders_in_full: below
    value_format_fact_orders_aggregate.total_orders_in_full: "#,\\K"
    show_comparison_fact_orders_aggregate.total_orders_in_full: false
    style_fact_orders_aggregate.total_orders_on_time_in_full: "#E8710A"
    show_title_fact_orders_aggregate.total_orders_on_time_in_full: true
    title_override_fact_orders_aggregate.total_orders_on_time_in_full: Orders Delivered
      On Time & In Full
    title_placement_fact_orders_aggregate.total_orders_on_time_in_full: below
    value_format_fact_orders_aggregate.total_orders_on_time_in_full: "#,\\K"
    show_comparison_fact_orders_aggregate.total_orders_on_time_in_full: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    listen:
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 0
    col: 3
    width: 18
    height: 4
  - title: Citywise Product Pinnacle
    name: Citywise Product Pinnacle
    model: fmcg_supplychain
    explore: fact_order_lines
    type: looker_bar
    fields: [dim_customers.city, fact_order_lines.total_orders, dim_products.category]
    pivots: [dim_customers.city]
    sorts: [dim_customers.city, fact_order_lines.total_orders desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
        reverse: false
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    column_group_spacing_ratio: 0.3
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Order Date: fact_order_lines.order_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 4
    col: 12
    width: 9
    height: 7
  - title: Cityscape Order Snapshot
    name: Cityscape Order Snapshot
    model: fmcg_supplychain
    explore: fact_order_lines
    type: looker_bar
    fields: [dim_customers.city, fact_order_lines.total_orders, dim_products.category]
    pivots: [dim_products.category]
    sorts: [dim_products.category, dim_customers.city, fact_order_lines.total_orders
        desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 9d1da669-a6b4-4a4f-8519-3ea8723b79b5
      palette_id: 0c5264fb-0681-4817-b9a5-d3c81002ce4c
      options:
        steps: 5
        reverse: false
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    column_group_spacing_ratio: 0.3
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Order Date: fact_order_lines.order_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 4
    col: 3
    width: 9
    height: 7
  - title: Order Share Across Customers
    name: Order Share Across Customers
    model: fmcg_supplychain
    explore: fact_order_lines
    type: looker_column
    fields: [dim_customers.customer_name, fact_order_lines.total_orders, dim_customers.city]
    pivots: [dim_customers.city]
    sorts: [dim_customers.city, dim_customers.customer_name desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent of Fact Order Lines Total Orders
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_fact_order_lines_total_orders
      args:
      - fact_order_lines.total_orders
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    x_axis_label: Customers
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    column_spacing_ratio: 0.2
    column_group_spacing_ratio: 0.2
    show_dropoff: false
    defaults_version: 1
    hidden_fields: [fact_order_lines.total_orders]
    listen:
      Order Date: fact_order_lines.order_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 11
    col: 3
    width: 18
    height: 9
  - title: Order Lines at Glance
    name: Order Lines at Glance
    model: fmcg_supplychain
    explore: fact_order_lines
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [fact_order_lines.total_order_lines, fact_order_lines.total_order_lines_shipped_in_full,
      fact_order_lines.line_fill_rate, fact_order_lines.volume_fill_rate]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent of Fact Order Lines Total Orders
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_fact_order_lines_total_orders
      args:
      - fact_order_lines.total_orders
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '16'
    orientation: auto
    style_fact_order_lines.total_order_lines: "#079c98"
    show_title_fact_order_lines.total_order_lines: true
    title_placement_fact_order_lines.total_order_lines: below
    value_format_fact_order_lines.total_order_lines: "#,\\K"
    style_fact_order_lines.total_order_lines_shipped_in_full: "#7CB342"
    show_title_fact_order_lines.total_order_lines_shipped_in_full: true
    title_placement_fact_order_lines.total_order_lines_shipped_in_full: below
    value_format_fact_order_lines.total_order_lines_shipped_in_full: "#,\\K"
    show_comparison_fact_order_lines.total_order_lines_shipped_in_full: false
    style_fact_order_lines.line_fill_rate: "#A8A116"
    show_title_fact_order_lines.line_fill_rate: true
    title_placement_fact_order_lines.line_fill_rate: below
    value_format_fact_order_lines.line_fill_rate: ''
    show_comparison_fact_order_lines.line_fill_rate: false
    style_fact_order_lines.volume_fill_rate: "#F9AB00"
    show_title_fact_order_lines.volume_fill_rate: true
    title_placement_fact_order_lines.volume_fill_rate: below
    value_format_fact_order_lines.volume_fill_rate: ''
    show_comparison_fact_order_lines.volume_fill_rate: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Customers
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      percent_of_fact_order_lines_total_orders: "#12B5CB"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0.2
    column_group_spacing_ratio: 0.2
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: |-
      <h4> LIFR: </h4><p> Line Fill Rate is an important metric for the supply planning team to understand how
      many lines they shipped out of the total lines ordered </p>
      <p>------------------------------------------------------------------------</p>
      <h4> VOFR: </h4><p>Volume fill rate or case fill rate is a similar metric useful for the supply planning team to understand the total quantity they are able to ship for a customer per order or for a given period of time</p>
    listen:
      Order Date: fact_order_lines.order_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 20
    col: 3
    width: 18
    height: 4
  - title: Product wise Daily LIFR & VOFR
    name: Product wise Daily LIFR & VOFR
    model: fmcg_supplychain
    explore: fact_order_lines
    type: looker_line
    fields: [dim_products.category, fact_order_lines.volume_fill_rate, dim_date.date_date,
      fact_order_lines.line_fill_rate]
    pivots: [dim_products.category]
    fill_fields: [dim_date.date_date]
    filters:
      dim_date.date_date: NOT NULL
    sorts: [dim_products.category, fact_order_lines.volume_fill_rate desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_labels: {}
    series_cell_visualizations:
      fact_order_lines.line_fill_rate:
        is_active: false
    table_theme: gray
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    font_size_main: '16'
    orientation: auto
    style_fact_order_lines.total_order_lines: "#079c98"
    show_title_fact_order_lines.total_order_lines: true
    title_placement_fact_order_lines.total_order_lines: below
    value_format_fact_order_lines.total_order_lines: "#,\\K"
    style_fact_order_lines.total_order_lines_shipped_in_full: "#7CB342"
    show_title_fact_order_lines.total_order_lines_shipped_in_full: true
    title_placement_fact_order_lines.total_order_lines_shipped_in_full: below
    value_format_fact_order_lines.total_order_lines_shipped_in_full: "#,\\K"
    show_comparison_fact_order_lines.total_order_lines_shipped_in_full: false
    style_fact_order_lines.line_fill_rate: "#A8A116"
    show_title_fact_order_lines.line_fill_rate: true
    title_placement_fact_order_lines.line_fill_rate: below
    value_format_fact_order_lines.line_fill_rate: ''
    show_comparison_fact_order_lines.line_fill_rate: false
    style_fact_order_lines.volume_fill_rate: "#F9AB00"
    show_title_fact_order_lines.volume_fill_rate: true
    title_placement_fact_order_lines.volume_fill_rate: below
    value_format_fact_order_lines.volume_fill_rate: ''
    show_comparison_fact_order_lines.volume_fill_rate: false
    x_axis_label: Customers
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      percent_of_fact_order_lines_total_orders: "#12B5CB"
    ordering: none
    show_null_labels: false
    column_spacing_ratio: 0.2
    column_group_spacing_ratio: 0.2
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    hidden_points_if_no: []
    hide_totals: false
    hide_row_totals: false
    listen:
      Order Date: fact_order_lines.order_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 24
    col: 3
    width: 18
    height: 9
  filters:
  - name: Order Date
    title: Order Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: fmcg_supplychain
    explore: fact_order_lines
    listens_to_filters: []
    field: fact_order_lines.order_date
  - name: Customer Name
    title: Customer Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: fmcg_supplychain
    explore: fact_order_lines
    listens_to_filters: []
    field: dim_customers.customer_name
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: inline
    model: fmcg_supplychain
    explore: fact_order_lines
    listens_to_filters: []
    field: dim_customers.city
