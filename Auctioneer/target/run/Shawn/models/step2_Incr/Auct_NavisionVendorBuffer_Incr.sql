
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_NavisionVendorBuffer_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_NavisionVendorBuffer_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_NavisionVendorBuffer_Incr" ("No", "Name", "Name2", "Address", "Address2", "City", "State", "CountryCode", "PostalCode", "Phoneno", "Email", "HomePage", "Taxliable", "FederalIDno", "1099Code", "Status", "StatusMessage", "WrotetoNavision", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "No", "Name", "Name2", "Address", "Address2", "City", "State", "CountryCode", "PostalCode", "Phoneno", "Email", "HomePage", "Taxliable", "FederalIDno", "1099Code", "Status", "StatusMessage", "WrotetoNavision", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_NavisionVendorBuffer_Incr__dbt_tmp"
    );

  