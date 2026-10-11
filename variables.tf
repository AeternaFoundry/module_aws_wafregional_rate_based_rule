variable "wafregional_rate_based_rules" {
  description = <<EOT
Map of wafregional_rate_based_rules, attributes below
Required:
    - metric_name
    - name
    - rate_key
    - rate_limit
Optional:
    - region
    - tags
    - tags_all
    - predicate (block):
        - data_id (required)
        - negated (required)
        - type (required)
EOT

  type = map(object({
    metric_name = string
    name        = string
    rate_key    = string
    rate_limit  = number
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    predicate = optional(list(object({
      data_id = string
      negated = bool
      type    = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.wafregional_rate_based_rules : (
        v.predicate == null || alltrue([for item in v.predicate : (length(item.data_id) >= 0 && length(item.data_id) <= 128)])
      )
    ])
    error_message = "must be between 0 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.wafregional_rate_based_rules : (
        v.rate_limit >= 100
      )
    ])
    error_message = "must be at least 100"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

