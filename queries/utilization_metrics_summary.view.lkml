view: utilization_metrics_summary {
  derived_table: {
    sql:
    SELECT
        creation_time,
        user_email,
        job_id,
        error_result,
        statement_type,
        labels,
        total_slot_ms,
        TIMESTAMP_DIFF(jbp.end_time,jbp.creation_time, SECOND) time_secs,
        total_bytes_processed bytes_scanned,
        (
            SELECT
                SUM(stage.shuffle_output_bytes)
            FROM
            UNNEST(job_stages) stage
        ) bytes_shuffled,
        (
            SELECT
                SUM(stage.shuffle_output_bytes_spilled)
            FROM
            UNNEST(job_stages) stage
        ) bytes_spilled
    FROM `{{ _filters['parameters.project_name'] | sql_quote | replace: "'", "" }}`.`region-{{ _filters['parameters.region'] | sql_quote | replace: "'", "" }}`.INFORMATION_SCHEMA.JOBS_BY_PROJECT jbp
    WHERE
        DATE(creation_time) BETWEEN '2023-02-01'
        AND '2023-04-15'
        AND jbp.end_time > jbp.start_time
        AND jbp.statement_type != 'SCRIPT'

    ;;
  }

  dimension_group: creation {
    type: time
    sql: ${TABLE}.creation_time ;;
  }
  dimension: user_email {}
  dimension: job_id {}
  dimension: error_result {}
  dimension: statement_type {}
  dimension: labels {}
  dimension: slot_ms {
    hidden: yes
    sql: ${TABLE}.total_slot_ms ;;
  }
  dimension: time_secs {
    hidden: yes
  }
  dimension: bytes_scanned {
    hidden: yes
  }

  measure: total_slot_ms {
    type: sum
    sql: ${slot_ms} ;;
  }

  measure: avg_slot_ms {
    type: average
    sql: ${slot_ms} ;;
  }

  measure: total_time_secs {
    type: sum
    sql: ${time_secs} ;;
  }

  measure: total_bytes_scanned {
    type: sum
    sql: ${bytes_scanned} ;;
  }

}
