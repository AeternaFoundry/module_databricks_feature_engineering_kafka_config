resource "databricks_feature_engineering_kafka_config" "feature_engineering_kafka_configs" {
  for_each = var.feature_engineering_kafka_configs

  auth_config       = each.value.auth_config
  bootstrap_servers = each.value.bootstrap_servers
  subscription_mode = each.value.subscription_mode
  backfill_source   = each.value.backfill_source
  extra_options     = each.value.extra_options
  ingestion_config  = each.value.ingestion_config
  key_schema        = each.value.key_schema
  provider_config   = each.value.provider_config
  value_schema      = each.value.value_schema
}

