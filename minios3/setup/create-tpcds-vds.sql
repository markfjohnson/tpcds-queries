CREATE VDS "tpcds-minio-base".call_center AS select   CONVERT_TO_INTEGER(cc_call_center_sk,1,1,0) AS cc_call_center_sk,
    cc_call_center_id,
    TO_DATE(cc_rec_start_date, 'YYYY-MM-DD',1) cc_rec_start_date,
    TO_DATE(cc_rec_end_date, 'YYYY-MM-DD',1) AS cc_rec_end_date,
    CONVERT_TO_INTEGER(cc_closed_date_sk,1,1,0) AS cc_closed_date_sk,
    CONVERT_TO_INTEGER(cc_open_date_sk,1,1,0) AS cc_open_date_sk,
    cc_name,
    cc_class,
    CONVERT_TO_INTEGER(cc_employees,1,1,0) AS cc_employees,
    CONVERT_TO_INTEGER(cc_sq_ft,1,1,0) AS cc_sq_ft,
    cc_hours,
    cc_manager,
    CONVERT_TO_INTEGER(cc_mkt_id,1,1,0) AS cc_mkt_id,
    cc_mkt_class,
    cc_mkt_desc,
    cc_market_manager,
    CONVERT_TO_INTEGER(cc_division,1,1,0) AS cc_division,
    cc_division_name,
    CONVERT_TO_INTEGER(cc_company,1,1,0) AS cc_company,
    cc_company_name,
    cc_street_number,
    cc_street_name,
    cc_street_type,
    cc_suite_number,
    cc_city,
    cc_county,
    cc_state,
    cc_zip,
    cc_country,
    cc_gmt_offset,
    CONVERT_TO_FLOAT(cc_tax_percentage, 1, 1, 0) AS cc_tax_percentage
    FROM "minio-s3.tpcds".call_center

CREATE VDS "tpcds-minio-base".catalog_page AS select
    CONVERT_TO_INTEGER(cp_catalog_page_sk,1,1,0) AS cp_catalog_page_sk,
    cp_catalog_page_id,
    CONVERT_TO_INTEGER(cp_start_date_sk,1,1,0) AS cp_start_date_sk,
    CONVERT_TO_INTEGER(cp_end_date_sk,1,1,0) AS cp_end_date_sk,
    cp_department,
    CONVERT_TO_INTEGER(cp_catalog_number,1,1,0) AS cp_catalog_number,
    CONVERT_TO_INTEGER(cp_catalog_page_number,1,1,0) AS cp_catalog_page_number,
    cp_description,
    cp_type
        FROM "minio-s3.tpcds".catalog_page

CREATE VDS "tpcds-minio-base".catalog_returns AS select
    CONVERT_TO_INTEGER(cr_returned_date_sk,1,1,0) AS cr_returned_date_sk,
    CONVERT_TO_INTEGER(cr_returned_time_sk,1,1,0) AS cr_returned_time_sk,
    CONVERT_TO_INTEGER(cr_item_sk,1,1,0) AS  cr_item_sk        ,
    CONVERT_TO_INTEGER(cr_refunded_customer_sk,1,1,0) AS cr_refunded_customer_sk,
    CONVERT_TO_INTEGER(cr_refunded_cdemo_sk,1,1,0) AS cr_refunded_cdemo_sk,
    CONVERT_TO_INTEGER(cr_refunded_hdemo_sk,1,1,0) AS cr_refunded_hdemo_sk,
    CONVERT_TO_INTEGER(cr_refunded_addr_sk,1,1,0) AS cr_refunded_addr_sk,
    CONVERT_TO_INTEGER(cr_returning_customer_sk,1,1,0) AS cr_returning_customer_sk,
    CONVERT_TO_INTEGER(cr_returning_cdemo_sk,1,1,0) AS cr_returning_cdemo_sk,
    CONVERT_TO_INTEGER(cr_returning_hdemo_sk,1,1,0) AS cr_returning_hdemo_sk,
    CONVERT_TO_INTEGER(cr_returning_addr_sk,1,1,0) AS cr_returning_addr_sk,
    CONVERT_TO_INTEGER(cr_call_center_sk,1,1,0) AS cr_call_center_sk,
    CONVERT_TO_INTEGER(cr_catalog_page_sk,1,1,0) AS cr_catalog_page_sk,
    CONVERT_TO_INTEGER(cr_ship_mode_sk,1,1,0) AS cr_ship_mode_sk,
    CONVERT_TO_INTEGER(cr_warehouse_sk,1,1,0) AS cr_warehouse_sk,
    CONVERT_TO_INTEGER(cr_reason_sk,1,1,0) AS cr_reason_sk,
    CONVERT_TO_INTEGER(cr_order_number,1,1,0) AS cr_order_number,
    CONVERT_TO_INTEGER(cr_return_quantity,1,1,0) AS cr_return_quantity,
    CONVERT_TO_FLOAT(cr_return_amount,1,1,0) AS cr_return_amount,
    CONVERT_TO_FLOAT(cr_return_tax,1,1,0) AS cr_return_tax,
    CONVERT_TO_FLOAT(cr_return_amt_inc_tax,1,1,0) AS cr_return_amt_inc_tax,
    CONVERT_TO_FLOAT(cr_fee ,1,1,0) AS cr_fee,
    CONVERT_TO_FLOAT(cr_return_ship_cost,1,1,0) AS cr_return_ship_cost,
    CONVERT_TO_FLOAT(cr_refunded_cash,1,1,0) AS cr_refunded_cash,
    CONVERT_TO_FLOAT(cr_reversed_charge,1,1,0) AS cr_reversed_charge,
    CONVERT_TO_FLOAT(cr_store_credit,1,1,0) AS cr_store_credit,
    CONVERT_TO_FLOAT(cr_net_loss  ,1,1,0) AS cr_net_loss
        FROM "minio-s3.tpcds".catalog_returns
CREATE VDS "tpcds-minio-base".catalog_sales AS select
    CONVERT_TO_INTEGER(cs_sold_date_sk,1,1,0) AS cs_sold_date_sk ,
    CONVERT_TO_INTEGER(cs_sold_time_sk,1,1,0) AS cs_sold_time_sk,
    CONVERT_TO_INTEGER(cs_ship_date_sk,1,1,0) AS cs_ship_date_sk,
    CONVERT_TO_INTEGER(cs_bill_customer_sk,1,1,0) AS cs_bill_customer_sk,
    CONVERT_TO_INTEGER(cs_bill_cdemo_sk,1,1,0) AS cs_bill_cdemo_sk,
    CONVERT_TO_INTEGER(cs_bill_hdemo_sk,1,1,0) AS cs_bill_hdemo_sk,
    CONVERT_TO_INTEGER(cs_bill_addr_sk,1,1,0) AS cs_bill_addr_sk,
    CONVERT_TO_INTEGER(cs_ship_customer_sk,1,1,0) AS cs_ship_customer_sk,
    CONVERT_TO_INTEGER(cs_ship_cdemo_sk,1,1,0) AS cs_ship_cdemo_sk,
    CONVERT_TO_INTEGER(cs_ship_hdemo_sk,1,1,0) AS cs_ship_hdemo_sk,
    CONVERT_TO_INTEGER(cs_ship_addr_sk,1,1,0) AS cs_ship_addr_sk,
    CONVERT_TO_INTEGER(cs_call_center_sk,1,1,0) AS cs_call_center_sk,
    CONVERT_TO_INTEGER(cs_catalog_page_sk,1,1,0) AS cs_catalog_page_sk,
    CONVERT_TO_INTEGER(cs_ship_mode_sk,1,1,0) AS cs_ship_mode_sk,
    CONVERT_TO_INTEGER(cs_warehouse_sk,1,1,0) AS cs_warehouse_sk,
    CONVERT_TO_INTEGER(cs_item_sk,1,1,0) AS cs_item_sk,
    CONVERT_TO_INTEGER(cs_promo_sk,1,1,0) AS cs_promo_sk,
    CONVERT_TO_INTEGER(cs_order_number,1,1,0) AS cs_order_number,
    CONVERT_TO_INTEGER(cs_quantity,1,1,0) AS  cs_quantity,
    CONVERT_TO_FLOAT(cs_wholesale_cost,1,1,0) AS cs_wholesale_cost,
    CONVERT_TO_FLOAT(cs_list_price,1,1,0) AS cs_list_price,
    CONVERT_TO_FLOAT(cs_sales_price,1,1,0) AS cs_sales_price,
    CONVERT_TO_FLOAT(cs_ext_discount_amt,1,1,0) AS cs_ext_discount_amt,
    CONVERT_TO_FLOAT(cs_ext_sales_price,1,1,0) AS cs_ext_sales_price,
    CONVERT_TO_FLOAT(cs_ext_wholesale_cost,1,1,0) AS cs_ext_wholesale_cost,
    CONVERT_TO_FLOAT(cs_ext_list_price,1,1,0) AS cs_ext_list_price,
    CONVERT_TO_FLOAT(cs_ext_tax,1,1,0) AS cs_ext_tax,
    CONVERT_TO_FLOAT(cs_coupon_amt,1,1,0) AS cs_coupon_amt,
    CONVERT_TO_FLOAT(cs_ext_ship_cost,1,1,0) AS cs_ext_ship_cost,
    CONVERT_TO_FLOAT(cs_net_paid,1,1,0) AS  cs_net_paid,
    CONVERT_TO_FLOAT(cs_net_paid_inc_tax,1,1,0) AS cs_net_paid_inc_tax,
    CONVERT_TO_FLOAT(cs_net_paid_inc_ship,1,1,0) AS cs_net_paid_inc_ship,
    CONVERT_TO_FLOAT(cs_net_paid_inc_ship_tax,1,1,0) AS cs_net_paid_inc_ship_tax,
    CONVERT_TO_FLOAT(cs_net_profit,1,1,0) AS  cs_net_profit
        FROM "minio-s3.tpcds".catalog_sales
CREATE VDS "tpcds-minio-base".customer AS select
    CONVERT_TO_INTEGER(c_customer_sk,1,1,0) AS  c_customer_sk,
    c_customer_id,
    CONVERT_TO_INTEGER(c_current_cdemo_sk,1,1,0) AS  c_current_cdemo_sk,
    CONVERT_TO_INTEGER(c_current_hdemo_sk,1,1,0) AS  c_current_hdemo_sk,
    CONVERT_TO_INTEGER(c_current_addr_sk ,1,1,0) AS  c_current_addr_sk,
    CONVERT_TO_INTEGER(c_first_shipto_date_sk,1,1,0) AS c_first_shipto_date_sk,
    CONVERT_TO_INTEGER(c_first_sales_date_sk,1,1,0) AS  c_first_sales_date_sk,
    c_salutation,
    c_first_name,
    c_last_name,
    c_preferred_cust_flag,
    CONVERT_TO_INTEGER(c_birth_day,1,1,0) AS  c_birth_day,
    CONVERT_TO_INTEGER(c_birth_month,1,1,0) AS c_birth_month,
    CONVERT_TO_INTEGER(c_birth_year,1,1,0) AS  c_birth_year,
    c_birth_country,
    c_login,
    c_email_address,
    CONVERT_TO_INTEGER(c_last_review_date_sk,1,1,0) AS  c_last_review_date_sk
        FROM "minio-s3.tpcds".customer
CREATE VDS "tpcds-minio-base".customer_address AS select
    CONVERT_TO_INTEGER(ca_address_sk,1,1,0) AS ca_address_sk,
    ca_address_id,
    ca_street_number,
    ca_street_name,
    ca_street_type,
    ca_suite_number,
    ca_city,
    ca_county,
    ca_state,
    ca_zip,
    ca_country,
    ca_gmt_offset,
    ca_location_type
        FROM "minio-s3.tpcds".customer_address

CREATE VDS "tpcds-minio-base".customer_demographics AS select
        CONVERT_TO_INTEGER(cd_demo_sk,1,1,0) as cd_demo_sk,
    cd_gender,
    cd_marital_status,
    cd_education_status,
    CONVERT_TO_INTEGER(cd_purchase_estimate,1,1,0) as  cd_purchase_estimate,
    cd_credit_rating,
    CONVERT_TO_INTEGER(cd_dep_count,1,1,0) as cd_dep_count,
    CONVERT_TO_INTEGER(cd_dep_employed_count,1,1,0) as cd_dep_employed_count,
    CONVERT_TO_INTEGER(cd_dep_college_count,1,1,0) as cd_dep_college_count
        FROM "minio-s3.tpcds".customer_demographics

CREATE VDS "tpcds-minio-base".date_dim AS SELECT CONVERT_TO_INTEGER(d_date_sk, 1, 1, 0) AS d_date_sk, d_date_id, TO_DATE(d_date,'YYYY-MM-DD') as d_date, CONVERT_TO_INTEGER(d_month_seq, 1, 1, 0) AS d_month_seq, CONVERT_TO_INTEGER(d_week_seq, 1, 1, 0) AS d_week_seq, CONVERT_TO_INTEGER(d_quarter_seq, 1, 1, 0) AS d_quarter_seq, CONVERT_TO_INTEGER(d_year, 1, 1, 0) AS d_year, CONVERT_TO_INTEGER(d_dow, 1, 1, 0) AS d_dow, CONVERT_TO_INTEGER(d_moy, 1, 1, 0) AS d_moy, CONVERT_TO_INTEGER(d_dom, 1, 1, 0) AS d_dom, CONVERT_TO_INTEGER(d_qoy, 1, 1, 0) AS d_qoy, CONVERT_TO_INTEGER(d_fy_year, 1, 1, 0) AS d_fy_year, d_fy_quarter_seq, d_fy_week_seq, d_day_name, d_quarter_name, d_holiday, d_weekend, d_following_holiday, CONVERT_TO_INTEGER(d_first_dom, 1, 1, 0) AS d_first_dom, CONVERT_TO_INTEGER(d_last_dom, 1, 1, 0) AS d_last_dom, CONVERT_TO_INTEGER(d_same_day_ly, 1, 1, 0) AS d_same_day_ly, CONVERT_TO_INTEGER(d_same_day_lq, 1, 1, 0) AS d_same_day_lq, d_current_day, d_current_week, d_current_month, d_current_quarter, d_current_year
FROM "minio-s3".tpcds.date_dim AS date_dim

CREATE VDS "tpcds-minio-base".dbgen_version AS select
    dv_version,
    TO_DATE(dv_create_date,'YYYY-MM-DD') as dv_create_date,
    TO_TIME(dv_create_time, 'HH24:MI:SS', 1) as dv_create_time,
    dv_cmdline_args
    FROM "minio-s3.tpcds".dbgen_version

CREATE VDS "tpcds-minio-base".household_demographics AS select
    CONVERT_TO_INTEGER(hd_demo_sk,1,1,0) AS hd_demo_sk,
    CONVERT_TO_INTEGER(hd_income_band_sk,1,1,0) AS hd_income_band_sk,
    hd_buy_potential,
    CONVERT_TO_INTEGER(hd_dep_count,1,1,0) AS hd_dep_count,
    CONVERT_TO_INTEGER(hd_vehicle_count,1,1,0) AS hd_vehicle_count
        FROM "minio-s3.tpcds".household_demographics

CREATE VDS "tpcds-minio-base".income_band AS select
    CONVERT_TO_INTEGER(ib_income_band_sk,1,1,0) AS ib_income_band_sk,
    CONVERT_TO_INTEGER(ib_lower_bound,1,1,0) AS ib_lower_bound,
    CONVERT_TO_INTEGER(ib_upper_bound,1,1,0) AS ib_upper_bound
        FROM "minio-s3.tpcds".income_band

CREATE VDS "tpcds-minio-base".inventory AS select
    CONVERT_TO_INTEGER(inv_date_sk,1,1,0) AS inv_date_sk,
    CONVERT_TO_INTEGER(inv_item_sk,1,1,0) AS inv_item_sk,
    CONVERT_TO_INTEGER(inv_warehouse_sk,1,1,0) AS inv_warehouse_sk,
    CONVERT_TO_INTEGER(inv_quantity_on_hand,1,1,0) AS inv_quantity_on_hand
        FROM "minio-s3.tpcds".inventory

CREATE VDS "tpcds-minio-base".item AS select
    CONVERT_TO_INTEGER(i_item_sk,1,1,0) as i_item_sk,
    CONVERT_TO_INTEGER(i_item_id,1,1,0) AS i_item_id,
    TO_DATE(i_rec_start_date,'YYYY-MM-DD',1) AS i_rec_start_date,
    TO_DATE(i_rec_end_date, 'YYYY-MM-DD',1) AS i_rec_end_date,
    i_item_desc,
    CONVERT_TO_FLOAT(i_current_price,1,1,0) AS i_current_price,
    CONVERT_TO_FLOAT(i_wholesale_cost,1,1,0) AS i_wholesale_cost,
    CONVERT_TO_INTEGER(i_brand_id,1,1,0) as i_brand_id,
    i_brand,
    CONVERT_TO_INTEGER(i_class_id,1,1,0) as i_class_id,
    i_class,
    CONVERT_TO_INTEGER(i_category_id,1,1,0) AS i_category_id,
    i_category,
    CONVERT_TO_INTEGER(i_manufact_id,1,1,0) AS i_manufact_id,
    i_manufact,
    i_size,
    i_formulation,
    i_color,
    i_units,
    i_container,
    CONVERT_TO_INTEGER(i_manager_id,1,1,0) as i_manager_id,
    i_product_name
        FROM "minio-s3.tpcds".item

CREATE VDS "tpcds-minio-base".promotion AS select
    CONVERT_TO_INTEGER(p_promo_sk,1,1,0) AS p_promo_sk,
    p_promo_id,
    CONVERT_TO_INTEGER(p_start_date_sk,1,1,0) AS p_start_date_sk,
    CONVERT_TO_INTEGER(p_end_date_sk,1,1,0) AS p_end_date_sk,
    CONVERT_TO_INTEGER(p_item_sk,1,1,0) AS p_item_sk,
    CONVERT_TO_FLOAT(p_cost,1,1,0) AS p_cost,
    CONVERT_TO_INTEGER(p_response_target,1,1,0) AS p_response_target,
    p_promo_name,
    p_channel_dmail,
    p_channel_email,
    p_channel_catalog,
    p_channel_tv,
    p_channel_radio,
    p_channel_press,
    p_channel_event,
    p_channel_demo,
    p_channel_details,
    p_purpose,
    p_discount_active
        FROM "minio-s3.tpcds".promotion
CREATE VDS "tpcds-minio-base".reason AS select
            CONVERT_TO_INTEGER(r_reason_sk,1,1,0) AS r_reason_sk,r_reason_id,r_reason_desc
        FROM "minio-s3.tpcds".reason

CREATE VDS "tpcds-minio-base".ship_mode AS select
    CONVERT_TO_INTEGER(sm_ship_mode_sk,1,1,0) AS sm_ship_mode_sk,
    sm_ship_mode_id,
    sm_type,
    sm_code,
    sm_carrier,
    sm_contract
        FROM "minio-s3.tpcds".ship_mode
CREATE VDS "tpcds-minio-base".store AS select
            CONVERT_TO_INTEGER(s_store_sk,1,1,0) AS s_store_sk,
    CONVERT_TO_INTEGER(s_store_id,1,1,0) AS s_store_id,
    TO_DATE(s_rec_start_date, 'YYYY-MM-DD',1) AS s_rec_start_date,
    TO_DATE(s_rec_end_date,'YYYY-MM-DD',1) AS s_rec_end_date,
    CONVERT_TO_INTEGER(s_closed_date_sk,1,1,0) AS s_closed_date_sk,
    s_store_name,
    CONVERT_TO_INTEGER(s_number_employees,1,1,0) AS s_number_employees,
    CONVERT_TO_INTEGER(s_floor_space,1,1,0) AS s_floor_space,
    s_hours,
    s_manager,
    CONVERT_TO_INTEGER(s_market_id,1,1,0) AS s_market_id,
    s_geography_class,
    s_market_desc,
    s_market_manager,
    CONVERT_TO_INTEGER(s_division_id,1,1,0) AS s_division_id,
    s_division_name,
    CONVERT_TO_INTEGER(s_company_id,1,1,0) AS s_company_id,
    s_company_name,
    s_street_number,
    s_street_name,
    s_street_type,
    s_suite_number,
    s_city,
    s_county,
    s_state,
    s_zip,
    s_country,
    CONVERT_TO_FLOAT(s_gmt_offset,1,1,0) AS s_gmt_offset,
    CONVERT_TO_FLOAT(s_tax_precentage,1,1,0) AS s_tax_precentage
        FROM "minio-s3.tpcds".store

CREATE VDS "tpcds-minio-base".store_returns AS select
    CONVERT_TO_INTEGER(sr_returned_date_sk,1,1,0) AS sr_returned_date_sk,
    CONVERT_TO_INTEGER(sr_return_time_sk,1,1,0) AS sr_return_time_sk,
    CONVERT_TO_INTEGER(sr_item_sk,1,1,0) AS  sr_item_sk,
    CONVERT_TO_INTEGER(sr_customer_sk,1,1,0) AS sr_customer_sk,
    CONVERT_TO_INTEGER(sr_cdemo_sk,1,1,0) AS sr_cdemo_sk,
    CONVERT_TO_INTEGER(sr_hdemo_sk,1,1,0) AS sr_hdemo_sk,
    CONVERT_TO_INTEGER(sr_addr_sk,1,1,0) AS sr_addr_sk,
    CONVERT_TO_INTEGER(sr_store_sk,1,1,0) AS sr_store_sk,
    CONVERT_TO_INTEGER(sr_reason_sk,1,1,0) AS sr_reason_sk,
    CONVERT_TO_INTEGER(sr_ticket_number,1,1,0) AS sr_ticket_number,
    CONVERT_TO_INTEGER(sr_return_quantity,1,1,0) AS sr_return_quantity,
    CONVERT_TO_FLOAT(sr_return_amt,1,1,0) AS sr_return_amt,
    CONVERT_TO_FLOAT(sr_return_tax,1,1,0) AS sr_return_tax,
    CONVERT_TO_FLOAT(sr_return_amt_inc_tax,1,1,0) sr_return_amt_inc_tax,
    CONVERT_TO_FLOAT(sr_fee,1,1,0) AS sr_fee,
    CONVERT_TO_FLOAT(sr_return_ship_cost,1,1,0) AS sr_return_ship_cost,
    CONVERT_TO_FLOAT(sr_refunded_cash,1,1,0) AS sr_refunded_cash,
    CONVERT_TO_FLOAT(sr_reversed_charge,1,1,0) AS sr_reversed_charge,
    CONVERT_TO_FLOAT(sr_store_credit,1,1,0) AS sr_store_credit,
    CONVERT_TO_FLOAT(sr_net_loss,1,1,0) AS sr_net_loss
        FROM "minio-s3.tpcds".store_returns

CREATE VDS "tpcds-minio-base".store_sales AS SELECT CONVERT_TO_INTEGER(ss_sold_date_sk, 1, 1, 0) AS ss_sold_date_sk, CONVERT_TO_INTEGER(ss_sold_time_sk, 1, 1, 0) AS ss_sold_time_sk, CONVERT_TO_INTEGER(ss_item_sk, 1, 1, 0) AS ss_item_sk, CONVERT_TO_INTEGER(ss_item_sk, 1, 1, 0) AS ss_customer_sk, CONVERT_TO_INTEGER(ss_cdemo_sk, 1, 1, 0) AS ss_cdemo_sk, ss_hdemo_sk, CONVERT_TO_INTEGER(ss_addr_sk, 1, 1, 0) AS ss_addr_sk, CONVERT_TO_INTEGER(ss_store_sk, 1, 1, 0) AS ss_store_sk, CONVERT_TO_INTEGER(ss_promo_sk, 1, 1, 0) AS ss_promo_sk, ss_ticket_number, CONVERT_TO_INTEGER(ss_quantity, 1, 1, 0) AS ss_quantity, CONVERT_TO_FLOAT(ss_wholesale_cost, 1, 1, 0) AS ss_wholesale_cost, CONVERT_TO_FLOAT(ss_list_price, 1, 1, 0) AS ss_list_price, CONVERT_TO_FLOAT(ss_sales_price, 1, 1, 0) AS ss_sales_price, CONVERT_TO_FLOAT(ss_ext_discount_amt, 1, 1, 0) AS ss_ext_discount_amt, CONVERT_TO_FLOAT(ss_ext_sales_price, 1, 1, 0) AS ss_ext_sales_price, CONVERT_TO_FLOAT(ss_ext_wholesale_cost, 1, 1, 0) AS ss_ext_wholesale_cost, CONVERT_TO_FLOAT(ss_ext_list_price, 1, 1, 0) AS ss_ext_list_price, CONVERT_TO_FLOAT(ss_ext_list_price,1,1,0) AS ss_ext_list, CONVERT_TO_FLOAT(ss_ext_tax, 1, 1, 0) AS ss_ext_tax, CONVERT_TO_FLOAT(ss_coupon_amt, 1, 1, 0) AS ss_coupon_amt, CONVERT_TO_FLOAT(ss_net_paid, 1, 1, 0) AS ss_net_paid, CONVERT_TO_FLOAT(ss_net_paid_inc_tax, 1, 1, 0) AS ss_net_paid_inc_tax, CONVERT_TO_FLOAT(ss_net_profit, 1, 1, 0) AS ss_net_profit
FROM "minio-s3".tpcds.store_sales AS store_sales

CREATE VDS "tpcds-minio-base".time_dim AS select
        CONVERT_TO_INTEGER(t_time_sk,1,1,0) AS t_time_sk,
    t_time_id,
    CONVERT_TO_INTEGER(t_time,1,1,0) AS t_time,
    CONVERT_TO_INTEGER(t_hour,1,1,0) AS t_hour,
    CONVERT_TO_INTEGER(t_minute,1,1,0) AS t_minute,
    CONVERT_TO_INTEGER(t_second,1,1,0) AS  t_second,
    t_am_pm,
    t_shift,
    t_sub_shift,
    t_meal_time
    FROM "minio-s3.tpcds".time_dim

CREATE VDS "tpcds-minio-base".warehouse AS select
    CONVERT_TO_INTEGER(w_warehouse_sk,1,1,0) AS w_warehouse_sk,
    w_warehouse_id,
    w_warehouse_name,
    CONVERT_TO_INTEGER(w_warehouse_sq_ft,1,1,0) AS w_warehouse_sq_ft,
    w_street_number,
    w_street_name,
    w_street_type,
    w_suite_number,
    w_city,
    w_county,
    w_state,
    w_zip,
    w_country,
    CONVERT_TO_FLOAT(w_gmt_offset,1,1,0) AS w_gmt_offset
    FROM "minio-s3.tpcds".warehouse

CREATE VDS "tpcds-minio-base".web_page AS select
    CONVERT_TO_INTEGER(wp_web_page_sk,1,1,0) AS wp_web_page_sk,
    wp_web_page_id,
    TO_DATE(wp_rec_start_date, 1) AS wp_rec_start_date,
    TO_DATE(wp_rec_end_date, 1) AS wp_rec_end_date,
    CONVERT_TO_INTEGER(wp_creation_date_sk,1,1,0) AS wp_creation_date_sk,
    CONVERT_TO_INTEGER(wp_access_date_sk,1,1,0) AS wp_access_date_sk,
    wp_autogen_flag,
    CONVERT_TO_INTEGER(wp_customer_sk,1,1,0) AS wp_customer_sk,
    wp_url,
    wp_type,
    CONVERT_TO_INTEGER(wp_char_count,1,1,0) AS wp_char_count,
    CONVERT_TO_INTEGER(wp_link_count,1,1,0) AS wp_link_count,
    CONVERT_TO_INTEGER(wp_image_count,1,1,0) AS wp_image_count,
    CONVERT_TO_INTEGER(wp_max_ad_count,1,1,0) AS wp_max_ad_count
        FROM "minio-s3.tpcds".web_page

CREATE VDS "tpcds-minio-base".web_returns AS select
    CONVERT_TO_INTEGER(wr_returned_date_sk,1,1,0) AS wr_returned_date_sk,
    CONVERT_TO_INTEGER(wr_returned_time_sk,1,1,0) AS wr_returned_time_sk,
    CONVERT_TO_INTEGER(wr_item_sk,1,1,0) AS wr_item_sk,
    CONVERT_TO_INTEGER(wr_refunded_customer_sk,1,1,0) AS wr_refunded_customer_sk,
    CONVERT_TO_INTEGER(wr_refunded_cdemo_sk,1,1,0) AS  wr_refunded_cdemo_sk,
    CONVERT_TO_INTEGER(wr_refunded_hdemo_sk,1,1,0) AS wr_refunded_hdemo_sk,
    CONVERT_TO_INTEGER(wr_refunded_addr_sk,1,1,0) AS wr_refunded_addr_sk,
    CONVERT_TO_INTEGER(wr_returning_customer_sk,1,1,0) AS wr_returning_customer_sk,
    CONVERT_TO_INTEGER(wr_returning_cdemo_sk,1,1,0) AS wr_returning_cdemo_sk,
    CONVERT_TO_INTEGER( wr_returning_hdemo_sk,1,1,0) AS wr_returning_hdemo_sk,
    CONVERT_TO_INTEGER(wr_returning_addr_sk,1,1,0) AS  wr_returning_addr_sk,
    CONVERT_TO_INTEGER(wr_web_page_sk,1,1,0) AS wr_web_page_sk,
    CONVERT_TO_INTEGER(wr_reason_sk,1,1,0) AS wr_reason_sk,
    CONVERT_TO_INTEGER(wr_order_number,1,1,0) AS wr_order_number,
    CONVERT_TO_INTEGER(wr_return_quantity,1,1,0) AS  wr_return_quantity,
    CONVERT_TO_FLOAT(wr_return_amt,1,1,0) AS wr_return_amt,
    CONVERT_TO_FLOAT(wr_return_tax,1,1,0) AS wr_return_tax,
    CONVERT_TO_FLOAT(wr_return_amt_inc_tax,1,1,0) AS wr_return_amt_inc_tax,
    CONVERT_TO_FLOAT(wr_fee,1,1,0) AS wr_fee,
    CONVERT_TO_FLOAT(wr_return_ship_cost,1,1,0) AS wr_return_ship_cost,
    CONVERT_TO_FLOAT(wr_refunded_cash,1,1,0) AS wr_refunded_cash,
    CONVERT_TO_FLOAT(wr_reversed_charge,1,1,0) AS  wr_reversed_charge,
    CONVERT_TO_FLOAT(wr_account_credit,1,1,0) AS wr_account_credit,
    CONVERT_TO_FLOAT(wr_net_loss,1,1,0) AS wr_net_loss
        FROM "minio-s3.tpcds".web_returns
CREATE VDS "tpcds-minio-base".web_sales AS select
    CONVERT_TO_INTEGER(ws_sold_date_sk,1,1,0) AS ws_sold_date_sk,
    CONVERT_TO_INTEGER(ws_sold_time_sk,1,1,0) AS ws_sold_time_sk,
    CONVERT_TO_INTEGER(ws_ship_date_sk,1,1,0) AS ws_ship_date_sk,
    CONVERT_TO_INTEGER(ws_item_sk,1,1,0) AS ws_item_sk,
    CONVERT_TO_INTEGER(ws_bill_customer_sk,1,1,0) AS ws_bill_customer_sk,
    CONVERT_TO_INTEGER(ws_bill_cdemo_sk,1,1,0) AS ws_bill_cdemo_sk,
    CONVERT_TO_INTEGER(ws_bill_hdemo_sk,1,1,0) AS ws_bill_hdemo_sk,
    CONVERT_TO_INTEGER(ws_bill_addr_sk,1,1,0) AS ws_bill_addr_sk,
    CONVERT_TO_INTEGER(ws_ship_customer_sk,1,1,0) AS ws_ship_customer_sk,
    CONVERT_TO_INTEGER(ws_ship_cdemo_sk,1,1,0) AS ws_ship_cdemo_sk,
    CONVERT_TO_INTEGER(ws_ship_hdemo_sk,1,1,0) AS ws_ship_hdemo_sk,
    CONVERT_TO_INTEGER(ws_ship_addr_sk,1,1,0) AS ws_ship_addr_sk,
    CONVERT_TO_INTEGER(ws_web_page_sk,1,1,0) AS ws_web_page_sk,
    CONVERT_TO_INTEGER(ws_web_site_sk,1,1,0) AS ws_web_site_sk,
    CONVERT_TO_INTEGER(ws_ship_mode_sk,1,1,0) AS ws_ship_mode_sk,
    CONVERT_TO_INTEGER(ws_warehouse_sk,1,1,0) AS ws_warehouse_sk,
    CONVERT_TO_INTEGER(ws_promo_sk,1,1,0) AS ws_promo_sk,
    CONVERT_TO_INTEGER(ws_order_number,1,1,0) AS ws_order_number,
    CONVERT_TO_INTEGER(ws_quantity,1,1,0) AS ws_quantity,
    CONVERT_TO_FLOAT(ws_wholesale_cost,1,1,0) AS ws_wholesale_cost,
    CONVERT_TO_FLOAT(ws_list_price,1,1,0) AS ws_list_price,
    CONVERT_TO_FLOAT(ws_sales_price,1,1,0) AS ws_sales_price,
    CONVERT_TO_FLOAT(ws_ext_discount_amt,1,1,0) AS ws_ext_discount_amt,
    CONVERT_TO_FLOAT(ws_ext_sales_price,1,1,0) AS ws_ext_sales_price,
    CONVERT_TO_FLOAT(ws_ext_wholesale_cost,1,1,0) AS ws_ext_wholesale_cost,
    CONVERT_TO_FLOAT(ws_ext_list_price,1,1,0) AS ws_ext_list_price,
    CONVERT_TO_FLOAT(ws_ext_tax,1,1,0) AS ws_ext_tax,
    CONVERT_TO_FLOAT(ws_coupon_amt,1,1,0) AS ws_coupon_amt,
    CONVERT_TO_FLOAT(ws_ext_ship_cost,1,1,0) AS ws_ext_ship_cost,
    CONVERT_TO_FLOAT(ws_net_paid,1,1,0) AS ws_net_paid,
    CONVERT_TO_FLOAT(ws_net_paid_inc_tax,1,1,0) AS ws_net_paid_inc_tax,
    CONVERT_TO_FLOAT(ws_net_paid_inc_ship,1,1,0) AS ws_net_paid_inc_ship,
    CONVERT_TO_FLOAT(ws_net_paid_inc_ship_tax,1,1,0) AS ws_net_paid_inc_ship_tax,
    CONVERT_TO_FLOAT(ws_net_profit,1,1,0) AS ws_net_profit
        FROM "minio-s3.tpcds".web_sales

CREATE VDS "tpcds-minio-base".web_site AS select
    CONVERT_TO_INTEGER(web_site_sk,1,1,0) AS web_site_sk,
    web_site_id,
    TO_DATE(web_rec_start_date, 'YYYY-MM-DD', 1) AS web_rec_start_date,
    TO_DATE(web_rec_end_date, 'YYYY-MM-DD', 1) as web_rec_end_date,
    web_name,
    CONVERT_TO_INTEGER(web_open_date_sk,1,1,0) AS web_open_date_sk,
    CONVERT_TO_INTEGER(web_close_date_sk,1,1,0) AS web_close_date_sk,
    web_class,
    web_manager,
    CONVERT_TO_INTEGER(web_mkt_id,1,1,0) AS web_mkt_id,
    web_mkt_class,
    web_mkt_desc,
    web_market_manager,
    CONVERT_TO_INTEGER(web_company_id,1,1,0) AS web_company_id,
    web_company_name,
    web_street_number,
    web_street_name,
    web_street_type,
    web_suite_number,
    web_city,
    web_county,
    web_state,
    web_zip,
    web_country,
    CONVERT_TO_FLOAT(web_gmt_offset,1,1,0) AS web_gmt_offset,
    CONVERT_TO_FLOAT(web_tax_percentage,1,1,0) AS web_tax_percentage
        FROM "minio-s3.tpcds".web_site
SELECT web_rec_end_date FROM web_site