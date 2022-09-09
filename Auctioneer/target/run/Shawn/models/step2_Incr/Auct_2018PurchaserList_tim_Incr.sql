
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_2018PurchaserList_tim_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_2018PurchaserList_tim_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_2018PurchaserList_tim_Incr" ("First_Name", "Last_Name", "Email", "Phone", "Address", "Address2", "City", "State", "ZipCode", "Country", "Optin", "AuctionID", "Source", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "First_Name", "Last_Name", "Email", "Phone", "Address", "Address2", "City", "State", "ZipCode", "Country", "Optin", "AuctionID", "Source", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_2018PurchaserList_tim_Incr__dbt_tmp"
    );

  