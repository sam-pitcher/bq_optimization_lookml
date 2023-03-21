connection: "sam-pitcher-playground"

include: "/jobs/*.view.lkml"

explore: jobs_timeline_by_project {
  sql_always_where:
  ${jobs_timeline_by_project.job_type} = 'QUERY' AND ${jobs_timeline_by_project.statement_type} <> 'SCRIPT' ;;
  always_filter: {
    filters: [
      project_name: "",
      region: "us"
    ]
  }
}

explore: quantile_statistics {
  always_filter: {
    filters: [
      period_start_filter: "2023-01-01",
      project_name: "",
      region: "us"
    ]
  }
}
