- dashboard: query_performance_metrics
  title: Query Performance Metrics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: byqjsPBxwEPRJkoLWeYaUQ
  elements:
  - title: Query Performance Metrics
    name: Query Performance Metrics
    model: system__activity
    explore: query_metrics
    type: looker_grid
    fields: [query.id, history.source, history.completed_time, history.dashboard_id,
      query_metrics.project_init, query_metrics.model_init_computed, query_metrics.model_init_cache,
      query_metrics.explore_init, query_metrics.marshalled_cache_load, query_metrics.prepare,
      query_metrics.acquire_connection, query_metrics.connection_held, query_metrics.execute_main_query,
      query_metrics.execute_fill_min_query, query_metrics.execute_fill_max_query,
      query_metrics.execute_fill_pivot_min_query, query_metrics.execute_fill_pivot_max_query,
      query_metrics.execute_totals_query, query_metrics.execute_row_totals_query,
      query_metrics.execute_grand_totals_query, query_metrics.load_main_query_in_memory,
      query_metrics.load_fill_min_query_in_memory, query_metrics.load_fill_max_query_in_memory,
      query_metrics.load_fill_pivot_min_query_in_memory, query_metrics.load_fill_pivot_max_query_in_memory,
      query_metrics.load_totals_query_in_memory, query_metrics.load_row_totals_query_in_memory,
      query_metrics.load_grand_totals_query_in_memory, query_metrics.post_processing,
      query_metrics.pdt, query_metrics.cache_load, query_metrics.stream_to_cache,
      query_metrics.async_processing, query_metrics.queued, query_metrics.per_user_throttler,
      history.slug]
    filters: {}
    sorts: [history.completed_time desc]
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
    listen:
      Slug: history.slug
      Created Time: history.created_time
      Created Date: history.created_date
      Email: user.email
      Connection Name: history.connection_name
    row: 15
    col: 0
    width: 24
    height: 5
  - title: BQ Query Performance Metrics
    name: BQ Query Performance Metrics
    # model: bq_optimization
    explore: jobs_by_project
    type: looker_grid
    fields: [jobs_by_project.creation_time_date, jobs_by_project.creation_time_time,
      jobs_by_project__labels.value, jobs_by_project.job_id, jobs_by_project.job_type,
      jobs_by_project.total_kilobytes_processed, jobs_by_project.total_megabytes_processed,
      jobs_by_project.max_slots, jobs_by_project.total_slots, jobs_by_project.total_slot_ms]
    filters:
      jobs_by_project.project_name: sam-pitcher-playground
      jobs_by_project.region: us
    sorts: [jobs_by_project__labels.value]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      jobs_by_project.total_kilobytes_processed:
        is_active: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Slug: jobs_by_project__labels.value
      Created Time: jobs_by_project.creation_time_time
      Created Date: jobs_by_project.creation_time_date
    row: 22
    col: 0
    width: 24
    height: 7
  - title: BQ Query Job Stages
    name: BQ Query Job Stages
    # model: bq_optimization
    explore: jobs_by_project
    type: looker_grid
    fields: [jobs_by_project.creation_time_date, jobs_by_project.creation_time_time,
      jobs_by_project__labels.value, jobs_by_project.job_id, jobs_by_project.job_type,
      jobs_by_project.total_slot_ms, jobs_by_project__job_stages.name, jobs_by_project__job_stages.start_ms,
      jobs_by_project__job_stages.end_ms, jobs_by_project__job_stages.wait_ms_avg,
      jobs_by_project__job_stages.write_ms_avg, jobs_by_project__job_stages.read_ms_avg,
      jobs_by_project__job_stages.records_read, jobs_by_project__job_stages.records_written,
      jobs_by_project__job_stages.shuffle_output_bytes]
    filters:
      jobs_by_project.project_name: sam-pitcher-playground
      jobs_by_project.region: us
    sorts: [jobs_by_project__labels.value, jobs_by_project__job_stages.name]
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Slug: jobs_by_project__labels.value
      Created Time: jobs_by_project.creation_time_time
      Created Date: jobs_by_project.creation_time_date
    row: 29
    col: 0
    width: 24
    height: 12
  - title: Looker Queries
    name: Looker Queries
    model: system__activity
    explore: history
    type: looker_grid
    fields: [history.runtime, history.created_time, history.connection_name, history.slug,
      history.status, user.name, user.email, history.source, history.id, query.id,
      source_query.id, query.link, source_query.link, query.formatted_fields, query.model,
      source_query.model, query.view, source_query.view]
    filters:
      history.source: ''
    sorts: [history.created_time desc]
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
    listen:
      Slug: history.slug
      Created Time: history.created_time
      Created Date: history.created_date
      Connection Name: history.connection_name
    row: 3
    col: 0
    width: 24
    height: 12
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"See slowest queries"}],"align":"center"},{"type":"p","children":[{"text":""}],"id":1679500683737},{"type":"p","id":1679500710818,"children":[{"text":"Add
      the Slug of the queries to the filter at the top to see both the BigQuery and
      Looker metrics below"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 3
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"h1","children":[{"text":"Big Query Information"}],"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 20
    col: 0
    width: 24
    height: 2
  filters:
  - name: Created Date
    title: Created Date
    type: field_filter
    default_value: today
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.created_date
  - name: Created Time
    title: Created Time
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.created_time
  - name: Email
    title: Email
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: user.email
  - name: Connection Name
    title: Connection Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.connection_name
  - name: Slug
    title: Slug
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: system__activity
    explore: query_metrics
    listens_to_filters: []
    field: history.slug
