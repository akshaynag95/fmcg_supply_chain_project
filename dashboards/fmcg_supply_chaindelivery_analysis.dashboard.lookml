---
- dashboard: fmcg_supply_chaindelivery_analysis
  title: FMCG Supply Chain-Delivery Analysis
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: VXapOghX6iZJXkf8uXf4hI
  elements:
  - title: On Time Deliveries
    name: On Time Deliveries
    model: fmcg_supplychain
    explore: fact_orders_aggregate
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [fact_orders_aggregate.on_time_delivery_percentage]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 7
    arm_weight: 17
    spinner_length: 146
    spinner_weight: 9
    target_length: 10
    target_gap: 10
    target_weight: 8
    range_min: 0
    value_label_type: both
    value_label_font: 10
    value_label_override: ''
    value_label_padding: 45
    target_source: override
    target_label_type: value
    target_label_font: 3
    target_label_override: ''
    target_value_override: '0.85'
    target_value_format: 0.00%
    label_font_size: 3
    range_formatting: 0%
    spinner_type: needle
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress-gradient
    fill_colors: ["#EE7772", "#ffed6f", "#7FCDAE"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 40
    range_x: 0.7
    range_y: 0.8
    target_label_padding: 1.05
    circleThickness: 0.5
    circleFillGap: 0.5
    waveHeight: 0.5
    waveCount: 5
    waveRiseTime: 2500
    waveAnimateTime: 2501
    waveOffset: 0.5
    textVertPosition: 0.5
    textSize: 0.5
    valueCountUp: false
    displayPercent: false
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
    hidden_pivots: {}
    listen:
      Order Placement Date: fact_orders_aggregate.order_placement_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 0
    col: 0
    width: 8
    height: 6
  - title: In Full Deliveries
    name: In Full Deliveries
    model: fmcg_supplychain
    explore: fact_orders_aggregate
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [fact_orders_aggregate.in_full_delivery_percentage]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 7
    arm_weight: 17
    spinner_length: 146
    spinner_weight: 9
    target_length: 10
    target_gap: 10
    target_weight: 8
    range_min: 0
    value_label_type: both
    value_label_font: 10
    value_label_override: ''
    value_label_padding: 45
    target_source: override
    target_label_type: value
    target_label_font: 3
    target_label_override: ''
    target_value_override: '0.75'
    target_value_format: 0.00%
    label_font_size: 3
    range_formatting: 0%
    spinner_type: needle
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress-gradient
    fill_colors: ["#EE7772", "#ffed6f", "#7FCDAE"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 40
    range_x: 0.7
    range_y: 0.8
    target_label_padding: 1.05
    circleThickness: 0.5
    circleFillGap: 0.5
    waveHeight: 0.5
    waveCount: 5
    waveRiseTime: 2500
    waveAnimateTime: 2501
    waveOffset: 0.5
    textVertPosition: 0.5
    textSize: 0.5
    valueCountUp: false
    displayPercent: false
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
    hidden_pivots: {}
    listen:
      Order Placement Date: fact_orders_aggregate.order_placement_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 0
    col: 8
    width: 8
    height: 6
  - title: On Time In Full Deliveries
    name: On Time In Full Deliveries
    model: fmcg_supplychain
    explore: fact_orders_aggregate
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [fact_orders_aggregate.on_time_in_full]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 7
    arm_weight: 17
    spinner_length: 146
    spinner_weight: 9
    target_length: 10
    target_gap: 10
    target_weight: 8
    range_min: 0
    value_label_type: both
    value_label_font: 10
    value_label_override: ''
    value_label_padding: 45
    target_source: override
    target_label_type: value
    target_label_font: 3
    target_label_override: ''
    target_value_override: '0.60'
    target_value_format: 0.00%
    label_font_size: 3
    range_formatting: 0%
    spinner_type: needle
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress-gradient
    fill_colors: ["#EE7772", "#ffed6f", "#7FCDAE"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 40
    range_x: 0.7
    range_y: 0.8
    target_label_padding: 1.05
    circleThickness: 0.5
    circleFillGap: 0.5
    waveHeight: 0.5
    waveCount: 5
    waveRiseTime: 2500
    waveAnimateTime: 2501
    waveOffset: 0.5
    textVertPosition: 0.5
    textSize: 0.5
    valueCountUp: false
    displayPercent: false
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
    hidden_pivots: {}
    listen:
      Order Placement Date: fact_orders_aggregate.order_placement_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 0
    col: 16
    width: 8
    height: 6
  - title: On Time Deliveries by City
    name: On Time Deliveries by City
    model: fmcg_supplychain
    explore: fact_orders_aggregate
    type: looker_bar
    fields: [fact_orders_aggregate.on_time_delivery_percentage, dim_customers.city]
    pivots: [dim_customers.city]
    sorts: [dim_customers.city]
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
    show_x_axis_ticks: false
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
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: ac6ae05d-f9a3-4ac3-b7b8-1be843c74609
      options:
        steps: 5
        reverse: true
    x_axis_label: Cities
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    column_spacing_ratio: 0.2
    column_group_spacing_ratio: 0
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Order Placement Date: fact_orders_aggregate.order_placement_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 6
    col: 0
    width: 8
    height: 6
  - title: In Full Deliveries by City
    name: In Full Deliveries by City
    model: fmcg_supplychain
    explore: fact_orders_aggregate
    type: looker_bar
    fields: [dim_customers.city, fact_orders_aggregate.in_full_delivery_percentage]
    pivots: [dim_customers.city]
    sorts: [dim_customers.city]
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
    show_x_axis_ticks: false
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
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: ac6ae05d-f9a3-4ac3-b7b8-1be843c74609
      options:
        steps: 5
        reverse: true
    x_axis_label: Cities
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    column_spacing_ratio: 0.2
    column_group_spacing_ratio: 0
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Order Placement Date: fact_orders_aggregate.order_placement_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 6
    col: 8
    width: 8
    height: 6
  - title: On Time In Full Deliveries by City
    name: On Time In Full Deliveries by City
    model: fmcg_supplychain
    explore: fact_orders_aggregate
    type: looker_bar
    fields: [dim_customers.city, fact_orders_aggregate.on_time_in_full]
    pivots: [dim_customers.city]
    sorts: [dim_customers.city]
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
    show_x_axis_ticks: false
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
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: ac6ae05d-f9a3-4ac3-b7b8-1be843c74609
      options:
        steps: 5
        reverse: true
    x_axis_label: Cities
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    column_spacing_ratio: 0.2
    column_group_spacing_ratio: 0
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Order Placement Date: fact_orders_aggregate.order_placement_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Weekly Trends on OT, IF & OTIF
    name: Weekly Trends on OT, IF & OTIF
    model: fmcg_supplychain
    explore: fact_orders_aggregate
    type: looker_line
    fields: [fact_orders_aggregate.on_time_delivery_percentage, fact_orders_aggregate.in_full_delivery_percentage,
      dim_date.week_no, fact_orders_aggregate.on_time_in_full]
    filters:
      dim_date.week_no: "-NULL"
    sorts: [dim_date.week_no]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      description: ''
      label: Aug Group
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: aug_group
      args:
      - fact_orders_aggregate.order_placement_date
      - - label: Month
          filter: 2023/07/30 to 2023/07/31
      -
      _kind_hint: dimension
      _type_hint: string
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
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: d754397b-2c05-4470-bbbb-05eb4c2b15cd
      palette_id: 5196a570-95f8-4337-859e-97bf8af31443
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors: {}
    series_point_styles:
      fact_orders_aggregate.on_time_delivery_percentage: diamond
      fact_orders_aggregate.in_full_delivery_percentage: triangle-down
      fact_orders_aggregate.on_time_in_full: square
    x_axis_datetime_label: "%m-%Y"
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Order Placement Date: fact_orders_aggregate.order_placement_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 12
    col: 0
    width: 24
    height: 7
  - title: Service Level Analysis
    name: Service Level Analysis
    model: fmcg_supplychain
    explore: fact_orders_aggregate
    type: looker_grid
    fields: [fact_orders_aggregate.on_time_delivery_percentage, fact_orders_aggregate.in_full_delivery_percentage,
      fact_orders_aggregate.on_time_in_full, dim_customers.customer_name]
    sorts: [dim_customers.customer_name]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      fact_orders_aggregate.on_time_delivery_percentage:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d,
          palette_id: e26878fa-802e-47d9-9478-62fb4307f763, options: {steps: 5}},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Order Placement Date: fact_orders_aggregate.order_placement_date
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 19
    col: 0
    width: 24
    height: 6
  - title: Avg 7 Day Lead Time by Cities
    name: Avg 7 Day Lead Time by Cities
    model: fmcg_supplychain
    explore: fact_order_lines
    type: looker_line
    fields: [fact_order_lines.lead_time, fact_order_lines.order_date, dim_customers.city]
    pivots: [dim_customers.city]
    fill_fields: [fact_order_lines.order_date]
    filters:
      fact_order_lines.order_date: 2023/08/01 to 2023/08/08
    sorts: [dim_customers.city, fact_order_lines.order_date desc]
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 25
    col: 0
    width: 12
    height: 8
  - title: Avg 7 Day Lead Time by Product Category
    name: Avg 7 Day Lead Time by Product Category
    model: fmcg_supplychain
    explore: fact_order_lines
    type: looker_line
    fields: [fact_order_lines.lead_time, fact_order_lines.order_date, dim_products.category]
    pivots: [dim_products.category]
    fill_fields: [fact_order_lines.order_date]
    filters:
      fact_order_lines.order_date: 2023/08/01 to 2023/08/08
    sorts: [dim_products.category, fact_order_lines.order_date desc]
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: 52550bde-5d63-4b91-9b67-2aed0fb2f505
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors:
      Food - fact_order_lines.lead_time: "#F57237"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Customer Name: dim_customers.customer_name
      City: dim_customers.city
    row: 25
    col: 12
    width: 12
    height: 8
  filters:
  - name: Order Placement Date
    title: Order Placement Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: fmcg_supplychain
    explore: fact_orders_aggregate
    listens_to_filters: []
    field: fact_orders_aggregate.order_placement_date
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
    explore: fact_orders_aggregate
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
      display: popover
    model: fmcg_supplychain
    explore: fact_order_lines
    listens_to_filters: []
    field: dim_customers.city
