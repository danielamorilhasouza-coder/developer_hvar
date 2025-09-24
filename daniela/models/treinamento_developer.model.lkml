connection: "big_query_analytics"

# include all the views
include: "/views/**/*.view.lkml"
include: "/daniela/explore/*.explore.lkml"
include: "/daniela/attributes/*.lkml"


persist_with: treinamento_developer_default_datagroup
