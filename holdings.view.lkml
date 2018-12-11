view: holdings {
  sql_table_name: LOOKER.HOLDINGS ;;

  dimension: account {
    type: number
    sql: ${TABLE}."Account" ;;
  }

  dimension: account_value {
    type: number
    sql: ${TABLE}."Account Value" ;;
  }

  dimension_group: as_of {
    type: time
    # sql: ${TABLE}."As Of Date" ;;
    sql: to_date(LEFT(${TABLE}."As Of Date", CHARINDEX(' ', ${TABLE}."As Of Date")-1), 'MM/DD/YYYY') ;;
  }

  dimension: asset_class {
    type: string
    sql: ${TABLE}."Asset Class" ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}."Client" ;;
  }

  dimension: cost_usd {
    type: number
    sql: ${TABLE}."Cost (USD)" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."Country" ;;
  }

  dimension: country_description {
    type: string
    sql: ${TABLE}."Country Description" ;;
  }

  dimension: custodian_init {
    type: string
    sql: ${TABLE}."Custodian Init" ;;
  }

  dimension_group: holding {
    type: time
    # sql: ${TABLE}."Holding Date" ;;
    sql: to_date(LEFT(${TABLE}."Holding Date", CHARINDEX(' ', ${TABLE}."Holding Date")-1), 'MM/DD/YYYY') ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."Industry" ;;
  }

  dimension: industry_level_1 {
    type: string
    sql: ${TABLE}."Industry Level 1" ;;
    drill_fields: [industry_level_2]
  }

  dimension: industry_level_2 {
    type: string
    sql: ${TABLE}."Industry Level 2" ;;
    drill_fields: [industry_level_3]
  }

  dimension: industry_level_3 {
    type: string
    sql: ${TABLE}."Industry Level 3" ;;
    drill_fields: [industry_level_4]
  }

  dimension: industry_level_4 {
    type: string
    sql: ${TABLE}."Industry Level 4" ;;
    drill_fields: [industry_level_5]
  }

  dimension: industry_level_5 {
    type: string
    sql: ${TABLE}."Industry Level 5" ;;
    drill_fields: [industry_level_6]
  }

  dimension: industry_level_6 {
    type: string
    sql: ${TABLE}."Industry Level 6" ;;
    drill_fields: [industry_level_7]
  }

  dimension: industry_level_7 {
    type: string
    sql: ${TABLE}."Industry Level 7" ;;
    drill_fields: [industry_level_8]
  }

  dimension: industry_level_8 {
    type: string
    sql: ${TABLE}."Industry Level 8" ;;
  }

  dimension: market_value_usd {
    type: number
    sql: ${TABLE}."Market Value (USD)" ;;
  }

  dimension: numeric_symbol {
    type: string
    sql: ${TABLE}."Numeric Symbol" ;;
  }

  dimension: price_local {
    type: number
    sql: ${TABLE}."Price (Local)" ;;
  }

  dimension: price_usd {
    type: number
    sql: ${TABLE}."Price (USD)" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."Quantity" ;;
  }

  dimension: security_id {
    type: number
    sql: ${TABLE}."Security ID" ;;
  }

  dimension: security_multiplier {
    type: number
    sql: ${TABLE}."Security Multiplier" ;;
  }

  dimension: security_name {
    type: string
    sql: ${TABLE}."Security Name" ;;
  }

  dimension: symbol {
    type: string
    sql: ${TABLE}."Symbol" ;;
  }

  measure: count {
    type: count
    drill_fields: [security_name]
  }

  measure: total_market_value_usd {
    type: sum
    sql: ${market_value_usd} ;;
    value_format_name: usd
  }
}
