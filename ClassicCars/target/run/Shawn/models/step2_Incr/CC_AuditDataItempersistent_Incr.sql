
      
  
    delete from "BJAC_DW_PROD"."stg"."CC_AuditDataItempersistent_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#CC_AuditDataItempersistent_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."CC_AuditDataItempersistent_Incr" ("OptimisticLockField", "GcRecord", "ModifiedOn", "OID", "UserName", "OperationType", "Description", "AuditeDOBJect", "OlDOBJect", "NewoBJect", "Oldvalue", "Newvalue", "PropertyName", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "OptimisticLockField", "GcRecord", "ModifiedOn", "OID", "UserName", "OperationType", "Description", "AuditeDOBJect", "OlDOBJect", "NewoBJect", "Oldvalue", "Newvalue", "PropertyName", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#CC_AuditDataItempersistent_Incr__dbt_tmp"
    );

  