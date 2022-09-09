
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_ReportPermission_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_ReportPermission_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_ReportPermission_Incr" ("ReportID", "Permission", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "ReportID", "Permission", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_ReportPermission_Incr__dbt_tmp"
    );

  