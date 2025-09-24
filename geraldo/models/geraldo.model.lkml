connection: "big_query_analytics"

# include all the views
include: "/views/**/*.view.lkml"
include: "/geraldo/explores/*.explore.lkml"
include: "/geraldo/atributos/*.lkml"

persist_with: treinamento_developer_default_datagroup
