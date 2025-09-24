view: vendas_ecommerce {
  sql_table_name: `analytics-looker-interno.thelook_ecommerce_copy.vendas_ecommerce` ;;

  dimension: canal_compra {
    type: string
    sql: ${TABLE}.canal_compra ;;
  }
  dimension_group: data_venda {
    type: time
    description: "%d/%m/%E4Y"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data_venda ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: genero {
    type: string
    sql: ${TABLE}.genero ;;
  }
  dimension: id_cliente {
    type: string
    sql: ${TABLE}.id_cliente ;;
  }
  dimension: idade {
    type: number
    sql: ${TABLE}.idade ;;
  }
  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }
  dimension: order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: pontos_utilizados_na_compra {
    type: number
    sql: ${TABLE}.pontos_utilizados_na_compra ;;
  }
  dimension: quantidade_categorias {
    type: number
    sql: ${TABLE}.quantidade_categorias ;;
  }
  dimension: quantidade_itens {
    type: number
    sql: ${TABLE}.quantidade_itens ;;
  }
  dimension: saldo_pontos_cliente {
    type: number
    sql: ${TABLE}.saldo_pontos_cliente ;;
  }
  dimension: valor_compra {
    type: number
    sql: ${TABLE}.valor_compra ;;
  }
  measure: count {
    type: count
    drill_fields: [orders.order_id]
  }
}
