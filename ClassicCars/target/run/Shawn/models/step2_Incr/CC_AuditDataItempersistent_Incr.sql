
      
  

    insert into "BJAC_DW_PROD"."stg"."CC_AuditDataItempersistent_Incr" ("hashValue", "effectiveTime", "OptimisticLockField", "GcRecord", "ModifiedOn", "OID", "UserName", "OperationType", "Description", "AuditeDOBJect", "OlDOBJect", "NewoBJect", "Oldvalue", "Newvalue", "PropertyName")
    (
        select "hashValue", "effectiveTime", "OptimisticLockField", "GcRecord", "ModifiedOn", "OID", "UserName", "OperationType", "Description", "AuditeDOBJect", "OlDOBJect", "NewoBJect", "Oldvalue", "Newvalue", "PropertyName"
        from "BJAC_DW_PROD"."stg"."#CC_AuditDataItempersistent_Incr__dbt_tmp"
    );

  