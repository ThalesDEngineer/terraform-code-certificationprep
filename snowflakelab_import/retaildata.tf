# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "RETAILDATA"
resource "snowflake_database" "retaildata" {
  comment                     = null
  data_retention_time_in_days = 0
  from_database               = null
  from_replica                = null
  from_share                  = null
  is_transient                = false
  name                        = "RETAILDATA"
}
