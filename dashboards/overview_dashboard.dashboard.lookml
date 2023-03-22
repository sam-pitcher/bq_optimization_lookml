- dashboard: slots_overview
  title: Slots Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: gXaq53Fj8AERriiFJNiJW6
  elements:
  - title: Time Series Job Count and gb Processed
    name: Time Series Job Count and gb Processed
    # model: bq_optimization
    explore: jobs_timeline_by_project
    type: looker_line
    fields: [jobs_timeline_by_project.period_start_time, jobs_timeline_by_project.job_count,
      jobs_timeline_by_project.total_gigabytes_processed, jobs_timeline_by_project.total_slots,
      jobs_timeline_by_project.max_slots]
    filters: {}
    sorts: [jobs_timeline_by_project.period_start_time]
    limit: 500
    query_timezone: America/Los_Angeles
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
    interpolation: linear
    defaults_version: 1
    hidden_fields: [jobs_timeline_by_project.total_slots, jobs_timeline_by_project.max_slots]
    listen:
      Region: jobs_timeline_by_project.region
      Project Name: jobs_timeline_by_project.project_name
      Period Start Time: jobs_timeline_by_project.period_start_time
    row: 2
    col: 0
    width: 24
    height: 10
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Time Series Overview"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 2
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Percentile Overview"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 39
    col: 0
    width: 24
    height: 2
  - title: Time Series Table
    name: Time Series Table
    # model: bq_optimization
    explore: jobs_timeline_by_project
    type: looker_grid
    fields: [jobs_timeline_by_project.job_count, jobs_timeline_by_project.total_slots,
      jobs_timeline_by_project.max_slots, jobs_timeline_by_project.total_gigabytes_processed,
      jobs_timeline_by_project.period_start_time]
    filters: {}
    sorts: [jobs_timeline_by_project.period_start_time]
    limit: 500
    query_timezone: America/Los_Angeles
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Region: jobs_timeline_by_project.region
      Project Name: jobs_timeline_by_project.project_name
      Period Start Time: jobs_timeline_by_project.period_start_time
    row: 21
    col: 0
    width: 24
    height: 18
  - title: Time Series Max and Total Slots
    name: Time Series Max and Total Slots
    # model: bq_optimization
    explore: jobs_timeline_by_project
    type: looker_line
    fields: [jobs_timeline_by_project.period_start_time, jobs_timeline_by_project.job_count,
      jobs_timeline_by_project.total_gigabytes_processed, jobs_timeline_by_project.total_slots,
      jobs_timeline_by_project.max_slots]
    filters: {}
    sorts: [jobs_timeline_by_project.period_start_time]
    limit: 500
    query_timezone: America/Los_Angeles
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
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: jobs_timeline_by_project.total_slots,
            id: jobs_timeline_by_project.total_slots, name: Total Slots}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: jobs_timeline_by_project.max_slots,
            id: jobs_timeline_by_project.max_slots, name: Max Slots}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_fields: [jobs_timeline_by_project.job_count, jobs_timeline_by_project.total_gigabytes_processed]
    listen:
      Region: jobs_timeline_by_project.region
      Project Name: jobs_timeline_by_project.project_name
      Period Start Time: jobs_timeline_by_project.period_start_time
    row: 12
    col: 0
    width: 24
    height: 9
  - title: Percentiles
    name: Percentiles
    # model: bq_optimization
    explore: quantile_statistics
    type: looker_single_record
    fields: [quantile_statistics.percentile_50, quantile_statistics.percentile_70,
      quantile_statistics.percentile_90, quantile_statistics.percentile_93, quantile_statistics.percentile_94,
      quantile_statistics.percentile_95, quantile_statistics.percentile_96, quantile_statistics.percentile_97,
      quantile_statistics.percentile_98, quantile_statistics.percentile_99]
    filters: {}
    sorts: [quantile_statistics.percentile_50]
    limit: 500
    query_timezone: UTC
    show_view_names: false
    defaults_version: 1
    listen:
      Region: quantile_statistics.region
      Project Name: quantile_statistics.project_name
      Period Start Time: quantile_statistics.period_start_filter
    row: 41
    col: 0
    width: 8
    height: 9
  - title: Hourly Quantile Statistics
    name: Hourly Quantile Statistics
    # model: bq_optimization
    explore: quantile_statistics_hourly
    type: looker_grid
    fields: [quantile_statistics_hourly.hour, quantile_statistics_hourly.percentile_50,
      quantile_statistics_hourly.percentile_70, quantile_statistics_hourly.percentile_90,
      quantile_statistics_hourly.percentile_93, quantile_statistics_hourly.percentile_94,
      quantile_statistics_hourly.percentile_95, quantile_statistics_hourly.percentile_96,
      quantile_statistics_hourly.percentile_97, quantile_statistics_hourly.percentile_98,
      quantile_statistics_hourly.percentile_99]
    filters: {}
    sorts: [quantile_statistics_hourly.hour]
    limit: 500
    query_timezone: America/Los_Angeles
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
    listen:
      Region: quantile_statistics_hourly.region
      Project Name: quantile_statistics_hourly.project_name
      Period Start Time: quantile_statistics_hourly.period_start_filter
    row: 41
    col: 8
    width: 16
    height: 9
  filters:
  - name: Region
    title: Region
    type: field_filter
    default_value: us
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_toggles
      display: inline
    # model: bq_optimization
    explore: jobs_timeline_by_project
    listens_to_filters: []
    field: jobs_timeline_by_project.region
  - name: Project Name
    title: Project Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    # model: bq_optimization
    explore: jobs_timeline_by_project
    listens_to_filters: []
    field: jobs_timeline_by_project.project_name
  - name: Period Start Time
    title: Period Start Time
    type: field_filter
    default_value: 1 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    # model: bq_optimization
    explore: jobs_timeline_by_project
    listens_to_filters: []
    field: jobs_timeline_by_project.period_start_time
