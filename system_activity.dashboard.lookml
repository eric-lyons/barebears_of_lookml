- dashboard: history_dashboard_test
  title: HISTORY_DASHBOARD_TEST
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: TILE_1
    name: TILE_1
    model: system__activity
    explore: history
    type: table
    fields: [history.real_dash_id, dashboard.count, merge_query.count, query.count]
    limit: 500
    column_limit: 50
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Users
    name: Users
    model: system__activity
    explore: history
    type: looker_grid
    fields: [user.email, dashboard.count]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 8
    width: 8
    height: 6
