
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_Mspub_IDEntity_Range_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_Mspub_IDEntity_Range_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_Mspub_IDEntity_Range_Incr" ("OBJID", "ThresHold", "Range", "Pub_Range", "Current_Pub_Range", "Last_Seed", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "OBJID", "ThresHold", "Range", "Pub_Range", "Current_Pub_Range", "Last_Seed", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_Mspub_IDEntity_Range_Incr__dbt_tmp"
    );

  