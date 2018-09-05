connection: "snowflake_internal"

# include all the views
include: "*.view"

# datagroup: rockefeller_custom_viz_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  # max_cache_age: "1 hour"
# }

# persist_with: rockefeller_custom_viz_default_datagroup

explore: holdings {}
