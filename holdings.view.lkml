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

  dimension: as_of_date {
    type: string
    sql: ${TABLE}."As Of Date" ;;
    # sql: REPLACE(${TABLE}."As Of Date",'/ ','-') ;;
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

  dimension: holding_date {
    type: string
    sql: ${TABLE}."Holding Date" ;;
    # sql: REPLACE(${TABLE}."Holding Date",'/ ','-') ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."Industry" ;;
  }

  dimension: industry_level_1 {
    type: string
    sql: ${TABLE}."Industry Level 1" ;;
  }

  dimension: industry_level_2 {
    type: string
    sql: ${TABLE}."Industry Level 2" ;;
  }

  dimension: industry_level_3 {
    type: string
    sql: ${TABLE}."Industry Level 3" ;;
  }

  dimension: industry_level_4 {
    type: string
    sql: ${TABLE}."Industry Level 4" ;;
  }

  dimension: industry_level_5 {
    type: string
    sql: ${TABLE}."Industry Level 5" ;;
  }

  dimension: industry_level_6 {
    type: string
    sql: ${TABLE}."Industry Level 6" ;;
  }

  dimension: industry_level_7 {
    type: string
    sql: ${TABLE}."Industry Level 7" ;;
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
}
