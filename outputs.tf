output "wafregional_rate_based_rules_id" {
  description = "Map of id values across all wafregional_rate_based_rules, keyed the same as var.wafregional_rate_based_rules"
  value       = { for k, v in aws_wafregional_rate_based_rule.wafregional_rate_based_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "wafregional_rate_based_rules_arn" {
  description = "Map of arn values across all wafregional_rate_based_rules, keyed the same as var.wafregional_rate_based_rules"
  value       = { for k, v in aws_wafregional_rate_based_rule.wafregional_rate_based_rules : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "wafregional_rate_based_rules_metric_name" {
  description = "Map of metric_name values across all wafregional_rate_based_rules, keyed the same as var.wafregional_rate_based_rules"
  value       = { for k, v in aws_wafregional_rate_based_rule.wafregional_rate_based_rules : k => v.metric_name if v.metric_name != null && length(v.metric_name) > 0 }
}
output "wafregional_rate_based_rules_name" {
  description = "Map of name values across all wafregional_rate_based_rules, keyed the same as var.wafregional_rate_based_rules"
  value       = { for k, v in aws_wafregional_rate_based_rule.wafregional_rate_based_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "wafregional_rate_based_rules_predicate" {
  description = "Map of predicate values across all wafregional_rate_based_rules, keyed the same as var.wafregional_rate_based_rules"
  value       = { for k, v in aws_wafregional_rate_based_rule.wafregional_rate_based_rules : k => v.predicate if v.predicate != null && length(v.predicate) > 0 }
}
output "wafregional_rate_based_rules_rate_key" {
  description = "Map of rate_key values across all wafregional_rate_based_rules, keyed the same as var.wafregional_rate_based_rules"
  value       = { for k, v in aws_wafregional_rate_based_rule.wafregional_rate_based_rules : k => v.rate_key if v.rate_key != null && length(v.rate_key) > 0 }
}
output "wafregional_rate_based_rules_rate_limit" {
  description = "Map of rate_limit values across all wafregional_rate_based_rules, keyed the same as var.wafregional_rate_based_rules"
  value       = { for k, v in aws_wafregional_rate_based_rule.wafregional_rate_based_rules : k => v.rate_limit if v.rate_limit != null }
}
output "wafregional_rate_based_rules_region" {
  description = "Map of region values across all wafregional_rate_based_rules, keyed the same as var.wafregional_rate_based_rules"
  value       = { for k, v in aws_wafregional_rate_based_rule.wafregional_rate_based_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "wafregional_rate_based_rules_tags" {
  description = "Map of tags values across all wafregional_rate_based_rules, keyed the same as var.wafregional_rate_based_rules"
  value       = { for k, v in aws_wafregional_rate_based_rule.wafregional_rate_based_rules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "wafregional_rate_based_rules_tags_all" {
  description = "Map of tags_all values across all wafregional_rate_based_rules, keyed the same as var.wafregional_rate_based_rules"
  value       = { for k, v in aws_wafregional_rate_based_rule.wafregional_rate_based_rules : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

