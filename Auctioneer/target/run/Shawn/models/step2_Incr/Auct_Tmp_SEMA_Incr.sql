
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_Tmp_SEMA_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_Tmp_SEMA_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_Tmp_SEMA_Incr" ("Email", "First_Name", "Last_Name", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "Email", "First_Name", "Last_Name", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_Tmp_SEMA_Incr__dbt_tmp"
    );

  