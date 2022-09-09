
      
  
    delete from "BJAC_DW_PROD"."stg"."CC_SavedSearchesAudit_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#CC_SavedSearchesAudit_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."CC_SavedSearchesAudit_Incr" ("dbt_scd_id", "dbt_valid_from", "dbt_valid_to")
    (
        select "dbt_scd_id", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#CC_SavedSearchesAudit_Incr__dbt_tmp"
    );

  