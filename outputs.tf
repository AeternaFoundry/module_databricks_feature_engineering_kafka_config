output "feature_engineering_kafka_configs_auth_config" {
  description = "Map of auth_config values across all feature_engineering_kafka_configs, keyed the same as var.feature_engineering_kafka_configs except keys with no auth_config are omitted"
  value       = { for k, v in databricks_feature_engineering_kafka_config.feature_engineering_kafka_configs : k => v.auth_config if v.auth_config != null && length(v.auth_config) > 0 }
}
output "feature_engineering_kafka_configs_backfill_source" {
  description = "Map of backfill_source values across all feature_engineering_kafka_configs, keyed the same as var.feature_engineering_kafka_configs except keys with no backfill_source are omitted"
  value       = { for k, v in databricks_feature_engineering_kafka_config.feature_engineering_kafka_configs : k => v.backfill_source if v.backfill_source != null && length(v.backfill_source) > 0 }
}
output "feature_engineering_kafka_configs_bootstrap_servers" {
  description = "Map of bootstrap_servers values across all feature_engineering_kafka_configs, keyed the same as var.feature_engineering_kafka_configs except keys with no bootstrap_servers are omitted"
  value       = { for k, v in databricks_feature_engineering_kafka_config.feature_engineering_kafka_configs : k => v.bootstrap_servers if v.bootstrap_servers != null && length(v.bootstrap_servers) > 0 }
}
output "feature_engineering_kafka_configs_extra_options" {
  description = "Map of extra_options values across all feature_engineering_kafka_configs, keyed the same as var.feature_engineering_kafka_configs except keys with no extra_options are omitted"
  value       = { for k, v in databricks_feature_engineering_kafka_config.feature_engineering_kafka_configs : k => v.extra_options if v.extra_options != null && length(v.extra_options) > 0 }
}
output "feature_engineering_kafka_configs_ingestion_config" {
  description = "Map of ingestion_config values across all feature_engineering_kafka_configs, keyed the same as var.feature_engineering_kafka_configs except keys with no ingestion_config are omitted"
  value       = { for k, v in databricks_feature_engineering_kafka_config.feature_engineering_kafka_configs : k => v.ingestion_config if v.ingestion_config != null && length(v.ingestion_config) > 0 }
}
output "feature_engineering_kafka_configs_key_schema" {
  description = "Map of key_schema values across all feature_engineering_kafka_configs, keyed the same as var.feature_engineering_kafka_configs except keys with no key_schema are omitted"
  value       = { for k, v in databricks_feature_engineering_kafka_config.feature_engineering_kafka_configs : k => v.key_schema if v.key_schema != null && length(v.key_schema) > 0 }
}
output "feature_engineering_kafka_configs_name" {
  description = "Map of name values across all feature_engineering_kafka_configs, keyed the same as var.feature_engineering_kafka_configs except keys with no name are omitted"
  value       = { for k, v in databricks_feature_engineering_kafka_config.feature_engineering_kafka_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "feature_engineering_kafka_configs_provider_config" {
  description = "Map of provider_config values across all feature_engineering_kafka_configs, keyed the same as var.feature_engineering_kafka_configs except keys with no provider_config are omitted"
  value       = { for k, v in databricks_feature_engineering_kafka_config.feature_engineering_kafka_configs : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "feature_engineering_kafka_configs_subscription_mode" {
  description = "Map of subscription_mode values across all feature_engineering_kafka_configs, keyed the same as var.feature_engineering_kafka_configs except keys with no subscription_mode are omitted"
  value       = { for k, v in databricks_feature_engineering_kafka_config.feature_engineering_kafka_configs : k => v.subscription_mode if v.subscription_mode != null && length(v.subscription_mode) > 0 }
}
output "feature_engineering_kafka_configs_value_schema" {
  description = "Map of value_schema values across all feature_engineering_kafka_configs, keyed the same as var.feature_engineering_kafka_configs except keys with no value_schema are omitted"
  value       = { for k, v in databricks_feature_engineering_kafka_config.feature_engineering_kafka_configs : k => v.value_schema if v.value_schema != null && length(v.value_schema) > 0 }
}

