- dashboard: bears_and_stuff_
  title: 'BEARS and stuff '
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: ONLY ONE
    name: ONLY ONE
    model: eric_likes_bears
    explore: order_items
    type: looker_column
    fields: [orders.status, orders.count]
    sorts: [orders.count desc]
    limit: 500
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
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 0
    width: 16
    height: 11
  - title: Look3
    name: Look3
    model: eric_likes_bears
    explore: users
    type: looker_scatter
    fields: [users.gender, users.first_name, users.count]
    sorts: [users.count desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '1',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}]
    query_timezone: UTC
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    series_labels:
      calculation_1: TEST
      users.first_name: "‎"
    theme: traditional
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: true
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", users.gender, users.first_name, calculation_1,
      users.count]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      users.first_name: 109
    series_cell_visualizations:
      users.count:
        is_active: true
        value_display: true
      calculation_1:
        is_active: false
    series_text_format:
      calculation_1:
        bg_color: "#592EC2"
        fg_color: "#4276BE"
      users.first_name:
        bg_color: "#592EC2"
        fg_color: "#592EC2"
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: greater than, value: 100, background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: along a scale..., value: !!null '',
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      users.count:
        name: gbp_0
        format_string: '"£"#,##0'
        label: British Pounds (0)
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    y_axes: []
    row: 0
    col: 16
    width: 8
    height: 6
  - title: New Tile
    name: New Tile
    model: eric_likes_bears
    explore: users
    type: single_value
    fields: [users.gender, users.first_name, users.count]
    sorts: [users.count desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '1',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}]
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    series_labels:
      calculation_1: TEST
      users.first_name: "‎"
    theme: traditional
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: true
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", users.gender, users.first_name, calculation_1,
      users.count]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      users.first_name: 109
    series_cell_visualizations:
      users.count:
        is_active: true
        value_display: true
      calculation_1:
        is_active: false
    series_text_format:
      calculation_1:
        bg_color: "#592EC2"
        fg_color: "#4276BE"
      users.first_name:
        bg_color: "#592EC2"
        fg_color: "#592EC2"
    table_theme: white
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: greater than, value: 100, background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: along a scale..., value: !!null '',
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      users.count:
        name: gbp_0
        format_string: '"£"#,##0'
        label: British Pounds (0)
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    y_axes: []
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Look5
    name: Look5
    model: eric_likes_bears
    explore: users
    type: single_value
    fields: [users.gender, users.first_name, users.count]
    sorts: [users.count desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '1',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}]
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    series_labels:
      calculation_1: TEST
      users.first_name: "‎"
    theme: traditional
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: true
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", users.gender, users.first_name, calculation_1,
      users.count]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      users.first_name: 109
    series_cell_visualizations:
      users.count:
        is_active: true
        value_display: true
      calculation_1:
        is_active: false
    series_text_format:
      calculation_1:
        bg_color: "#592EC2"
        fg_color: "#4276BE"
      users.first_name:
        bg_color: "#592EC2"
        fg_color: "#592EC2"
    table_theme: white
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: greater than, value: 100, background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: along a scale..., value: !!null '',
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      users.count:
        name: gbp_0
        format_string: '"£"#,##0'
        label: British Pounds (0)
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    y_axes: []
    row: 11
    col: 0
    width: 8
    height: 6
  - title: stay
    name: stay
    model: eric_likes_bears
    explore: users
    type: single_value
    fields: [users.gender, users.first_name]
    sorts: [users.gender]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '1',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number, is_disabled: true}]
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    series_labels:
      calculation_1: TEST
      users.first_name: "‎"
    theme: traditional
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: true
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", users.gender, users.first_name, calculation_1,
      users.count]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      users.first_name: 109
    series_cell_visualizations:
      users.count:
        is_active: true
        value_display: true
      calculation_1:
        is_active: false
    series_text_format:
      calculation_1:
        bg_color: "#592EC2"
        fg_color: "#4276BE"
      users.first_name:
        bg_color: "#592EC2"
        fg_color: "#592EC2"
    table_theme: white
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: greater than, value: 100, background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: along a scale..., value: !!null '',
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      users.count:
        name: gbp_0
        format_string: '"£"#,##0'
        label: British Pounds (0)
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    y_axes: []
    row: 11
    col: 8
    width: 8
    height: 6
  - title: stay
    name: stay (2)
    model: eric_likes_bears
    explore: users
    type: single_value
    fields: [users.gender, users.first_name]
    sorts: [users.gender]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '1',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number, is_disabled: true}]
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    series_labels:
      calculation_1: TEST
      users.first_name: "‎"
    theme: traditional
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: true
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", users.gender, users.first_name, calculation_1,
      users.count]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      users.first_name: 109
    series_cell_visualizations:
      users.count:
        is_active: true
        value_display: true
      calculation_1:
        is_active: false
    series_text_format:
      calculation_1:
        bg_color: "#592EC2"
        fg_color: "#4276BE"
      users.first_name:
        bg_color: "#592EC2"
        fg_color: "#592EC2"
    table_theme: white
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: greater than, value: 100, background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: along a scale..., value: !!null '',
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      users.count:
        name: gbp_0
        format_string: '"£"#,##0'
        label: British Pounds (0)
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    y_axes: []
    row: 17
    col: 0
    width: 8
    height: 6
  - name: Hi
    type: text
    title_text: Hi
    subtitle_text: Hi
    body_text: <div style="box-shadow:5px 10px;">Hi Adam</div>
    row: 23
    col: 0
    width: 8
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: '<p style="position:absolute; background: linear-gradient(to right,#f32170,#ff6b08,#cf23cf,#eedd44);
      webkit-text-fill-color: transparent; webkit-background-clip: text; ">Covid-19
      Case Investigator Dashboard</p>'
    body_text: ''
    row: 29
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile (2)
    model: eric_likes_bears
    explore: users
    type: looker_scatter
    fields: [users.gender, users.first_name, users.count]
    filters:
      users.date: 2021/10/21
      users.datetime: 2021/10/21
    sorts: [users.count desc]
    limit: 10
    dynamic_fields: [{category: table_calculation, expression: 'if(${users.gender}
          = "m", yes, no)', label: Calculation 1, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: calculation_1, _type_hint: yesno}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: [calculation_1]
    series_labels:
      calculation_1: TEST
      users.first_name: "‎"
    theme: traditional
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: true
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", users.gender, users.first_name, calculation_1,
      users.count]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      users.first_name: 109
    series_cell_visualizations:
      users.count:
        is_active: true
        value_display: true
      calculation_1:
        is_active: false
    series_text_format:
      calculation_1:
        bg_color: "#592EC2"
        fg_color: "#4276BE"
      users.first_name:
        bg_color: "#592EC2"
        fg_color: "#592EC2"
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: greater than, value: 100, background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: along a scale..., value: !!null '',
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      users.count:
        name: gbp_0
        format_string: '"£"#,##0'
        label: British Pounds (0)
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    y_axes: []
    row:
    col:
    width:
    height:
  - title: New Tile
    name: New Tile (3)
    model: eric_likes_bears
    explore: users
    type: looker_scatter
    fields: [users.gender, users.first_name, users.count]
    filters:
      users.date: 2021/10/21
      users.datetime: 2021/10/21
    sorts: [users.count desc]
    limit: 10
    dynamic_fields: [{category: table_calculation, expression: 'if(${users.gender}
          = "f", yes, no)', label: Calculation 1, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: calculation_1, _type_hint: yesno}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: [calculation_1]
    series_labels:
      calculation_1: TEST
      users.first_name: "‎"
    theme: traditional
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: true
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", users.gender, users.first_name, calculation_1,
      users.count]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      users.first_name: 109
    series_cell_visualizations:
      users.count:
        is_active: true
        value_display: true
      calculation_1:
        is_active: false
    series_text_format:
      calculation_1:
        bg_color: "#592EC2"
        fg_color: "#4276BE"
      users.first_name:
        bg_color: "#592EC2"
        fg_color: "#592EC2"
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: greater than, value: 100, background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: along a scale..., value: !!null '',
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      users.count:
        name: gbp_0
        format_string: '"£"#,##0'
        label: British Pounds (0)
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    y_axes: []
    row:
    col:
    width:
    height:
  - title: hola
    name: hola
    model: eric_likes_bears
    explore: users
    type: looker_scatter
    fields: [users.gender, users.first_name, users.count]
    filters:
      users.date: 2021/10/27
      users.datetime: 2021/10/27
    sorts: [users.count desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '1',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    hidden_fields: []
    hidden_points_if_no: []
    series_labels:
      calculation_1: TEST
      users.first_name: "‎"
    theme: traditional
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: true
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", users.gender, users.first_name, calculation_1,
      users.count]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_column_widths:
      users.first_name: 109
    series_cell_visualizations:
      users.count:
        is_active: true
        value_display: true
      calculation_1:
        is_active: false
    series_text_format:
      calculation_1:
        bg_color: "#592EC2"
        fg_color: "#4276BE"
      users.first_name:
        bg_color: "#592EC2"
        fg_color: "#592EC2"
    table_theme: white
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: greater than, value: 100, background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: along a scale..., value: !!null '',
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      users.count:
        name: gbp_0
        format_string: '"£"#,##0'
        label: British Pounds (0)
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    y_axes: []
    row:
    col:
    width:
    height:
