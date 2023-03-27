view: parameters {
  filter: project_name {
    type: string
  }

  filter: region {
    type: string
    suggestions: ["eu","us"]
  }

  parameter: timeframe {
    type: unquoted
    allowed_value: {
      value: "second"
      label: "Second"
    }
    allowed_value: {
      value: "minute"
      label: "Minute"
    }
    allowed_value: {
      value: "hour"
      label: "Hour"
    }
    default_value: "second"
  }
}
