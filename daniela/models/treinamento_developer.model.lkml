connection: "big_query_analytics"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: treinamento_developer_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: treinamento_developer_default_datagroup
