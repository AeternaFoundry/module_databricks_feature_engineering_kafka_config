variable "feature_engineering_kafka_configs" {
  description = <<EOT
Map of feature_engineering_kafka_configs, attributes below
Required:
    - auth_config
    - bootstrap_servers
    - subscription_mode
Optional:
    - backfill_source
    - extra_options
    - ingestion_config
    - key_schema
    - provider_config
    - value_schema
EOT

  type = map(object({
    auth_config = object({
      mtls_config = optional(object({
        disable_hostname_verification = optional(bool)
        key_password_ref = object({
          key   = string
          scope = string
        })
        keystore_location = string
        keystore_password_ref = object({
          key   = string
          scope = string
        })
        truststore_location = string
        truststore_password_ref = object({
          key   = string
          scope = string
        })
      }))
      uc_service_credential_name = optional(string)
    })
    bootstrap_servers = string
    subscription_mode = object({
      assign            = optional(string)
      subscribe         = optional(string)
      subscribe_pattern = optional(string)
    })
    backfill_source = optional(object({
      delta_table_name = optional(string)
      delta_table_source = optional(object({
        dataframe_schema   = optional(string)
        entity_columns     = optional(list(string))
        filter_condition   = optional(string)
        full_name          = string
        timeseries_column  = optional(string)
        transformation_sql = optional(string)
      }))
    }))
    extra_options = optional(map(string))
    ingestion_config = optional(object({
      backfill_source = optional(object({
        delta_table_name = optional(string)
        delta_table_source = optional(object({
          dataframe_schema   = optional(string)
          entity_columns     = optional(list(string))
          filter_condition   = optional(string)
          full_name          = string
          timeseries_column  = optional(string)
          transformation_sql = optional(string)
        }))
      }))
      budget_policy_id      = optional(string)
      deduplication_columns = optional(list(string))
      ingestion_destination = object({
        delta_table_name = optional(string)
      })
      tags = optional(map(string))
    }))
    key_schema = optional(object({
      avro_schema = optional(string)
      json_schema = optional(string)
      proto_schema = optional(object({
        message_name = string
        schema_text  = string
      }))
    }))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    value_schema = optional(object({
      avro_schema = optional(string)
      json_schema = optional(string)
      proto_schema = optional(object({
        message_name = string
        schema_text  = string
      }))
    }))
  }))
}

