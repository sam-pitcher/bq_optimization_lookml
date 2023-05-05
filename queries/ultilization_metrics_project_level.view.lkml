view: ultilization_metrics_project_level {
  derived_table: {
    sql:
    SELECT
    project_id
    , COUNT(*) as job_count
    , AVG(total_slot_ms)/1000 avg_total_slot_secs
    , MAX(median_total_slot_ms)/1000 median_total_slot_secs
    , MAX(p80_total_slot_ms)/1000 p80_total_slot_secs
    , MAX(p99_total_slot_ms)/1000 p99_total_slot_secs
    , SUM(total_slot_ms)/1000/60/60 total_slot_hours
    , MAX(total_slot_ms)/1000/60/60 peak_slot_hours
    , AVG(time_secs) avg_time_secs
    , MAX(median_time_secs) median_time_secs
    , SUM(time_secs)/60/60 total_time_hours
    , MAX(p80_time_secs) p80_time_secs
    , MAX(p99_time_secs) p99_time_secs
    , AVG(bytes_scanned)/POW(1024,3) avg_gb_scanned
    , MAX(p80_bytes_scanned)/POW(1024,3) p80_gb_scanned
    , MAX(p99_bytes_scanned)/POW(1024,3) p99_gb_scanned
    , SUM(bytes_scanned)/POW(1024,4) total_tb_scanned
    , AVG(bytes_shuffled)/POW(1024,3) avg_gb_shuffled
    , MAX(p80_bytes_shuffled)/POW(1024,3) p80_gb_shuffled
    , MAX(p99_bytes_shuffled)/POW(1024,3) p99_gb_shuffled
    , SUM(bytes_shuffled)/POW(1024,4) total_tb_shuffled
    , AVG(bytes_spilled)/POW(1024,3) avg_gb_spilled
    , MAX(p80_bytes_spilled)/POW(1024,3) p80_gb_spilled
    , MAX(p99_bytes_spilled)/POW(1024,3) p99_gb_spilled
    , SUM(bytes_spilled)/POW(1024,4) total_tb_spilled
FROM(
    SELECT
        project_id
        , total_slot_ms
        , PERCENTILE_CONT(total_slot_ms, 0.5) OVER (PARTITION BY project_id) as median_total_slot_ms
        , PERCENTILE_CONT(total_slot_ms, 0.8) OVER (PARTITION BY project_id) as p80_total_slot_ms
        , PERCENTILE_CONT(total_slot_ms, 0.99) OVER (PARTITION BY project_id) as p99_total_slot_ms
        , time_secs
        , PERCENTILE_CONT(time_secs, 0.5) OVER (PARTITION BY project_id) as median_time_secs
        , PERCENTILE_CONT(time_secs, 0.8) OVER (PARTITION BY project_id) as p80_time_secs
        , PERCENTILE_CONT(time_secs, 0.99) OVER (PARTITION BY project_id) as p99_time_secs
        , bytes_scanned AS bytes_scanned
        , PERCENTILE_CONT(bytes_scanned, 0.8) OVER (PARTITION BY project_id) as p80_bytes_scanned
        , PERCENTILE_CONT(bytes_scanned, 0.99) OVER (PARTITION BY project_id) as p99_bytes_scanned
        , bytes_shuffled
        , PERCENTILE_CONT(bytes_shuffled, 0.8) OVER (PARTITION BY project_id) as p80_bytes_shuffled
        , PERCENTILE_CONT(bytes_shuffled, 0.99) OVER (PARTITION BY project_id) as p99_bytes_shuffled
        , bytes_spilled
        , PERCENTILE_CONT(bytes_spilled, 0.8) OVER (PARTITION BY project_id) as p80_bytes_spilled
        , PERCENTILE_CONT(bytes_spilled, 0.99) OVER (PARTITION BY project_id) as p99_bytes_spilled
    FROM (
        SELECT
            "{{ _filters['parameters.project_name'] | sql_quote | replace: "'", "" }}" as project_id
            , total_slot_ms
            , time_secs
            , bytes_scanned
            , bytes_shuffled
            , bytes_spilled
        FROM
            ${utilization_metrics_summary.SQL_TABLE_NAME} jbo
    )
)
GROUP BY 1

    ;;
  }

  dimension: project_id {}
  dimension: job_count {}
  dimension: avg_total_slot_secs {}
  dimension: median_total_slot_secs {}
  dimension: p80_total_slot_secs {}
  dimension: p99_total_slot_secs {}
  dimension: total_slot_hours {}
  dimension: peak_slot_hours {}
  dimension: avg_time_secs {}
  dimension: median_time_secs {}
  dimension: total_time_hours {}
  dimension: p80_time_secs {}
  dimension: p99_time_secs {}
  dimension: avg_gb_scanned {}
  dimension: p80_gb_scanned {}
  dimension: p99_gb_scanned {}
  dimension: total_tb_scanned {}
  dimension: avg_gb_shuffled {}
  dimension: p80_gb_shuffled {}
  dimension: p99_gb_shuffled {}
  dimension: total_tb_shuffled {}
  dimension: avg_gb_spilled {}
  dimension: p80_gb_spilled {}
  dimension: p99_gb_spilled {}
  dimension: total_tb_spilled {}
}
