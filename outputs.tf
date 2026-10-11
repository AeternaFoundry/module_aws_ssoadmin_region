output "ssoadmin_regions_instance_arn" {
  description = "Map of instance_arn values across all ssoadmin_regions, keyed the same as var.ssoadmin_regions"
  value       = { for k, v in aws_ssoadmin_region.ssoadmin_regions : k => v.instance_arn if v.instance_arn != null && length(v.instance_arn) > 0 }
}
output "ssoadmin_regions_region" {
  description = "Map of region values across all ssoadmin_regions, keyed the same as var.ssoadmin_regions"
  value       = { for k, v in aws_ssoadmin_region.ssoadmin_regions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ssoadmin_regions_region_name" {
  description = "Map of region_name values across all ssoadmin_regions, keyed the same as var.ssoadmin_regions"
  value       = { for k, v in aws_ssoadmin_region.ssoadmin_regions : k => v.region_name if v.region_name != null && length(v.region_name) > 0 }
}
output "ssoadmin_regions_status" {
  description = "Map of status values across all ssoadmin_regions, keyed the same as var.ssoadmin_regions"
  value       = { for k, v in aws_ssoadmin_region.ssoadmin_regions : k => v.status if v.status != null && length(v.status) > 0 }
}

