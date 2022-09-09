
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_GroupPrivilege_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_GroupPrivilege_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_GroupPrivilege_Incr" ("GroupID", "PrivilegeID", "Deny", "Created", "UpdateEventID", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "GroupID", "PrivilegeID", "Deny", "Created", "UpdateEventID", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_GroupPrivilege_Incr__dbt_tmp"
    );

  