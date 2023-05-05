view: nav_bar {
  derived_table: {
    sql: select 1 ;;
  }
  dimension: nav_bar {
    sql: 1 ;;
    html:
        <a href="/dashboards/{{_model._name}}::slots_overview"><button type="button" class="btn btn-primary">Slots Overview</button></a>
        <a href="/dashboards/{{_model._name}}::slots_overview"><button type="button" class="btn btn-primary">Dashboard Performance Overview</button></a>
        <a href="/dashboards/{{_model._name}}::looker_most_run_queries"><button type="button" class="btn btn-primary">Looker Most Run Queries</button></a>
        <a href="/dashboards/{{_model._name}}::query_performance_metrics"><button type="button" class="btn btn-primary">Query Performance Metrics</button></a>
        <a href="/dashboards/{{_model._name}}::specific_query_performance_metrics"><button type="button" class="btn btn-primary">Specific Query Performance Metrics</button></a>
    ;;
  }
}
