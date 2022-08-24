
      
  

    insert into "BJAC_DW_PROD"."stg"."CC_AuditeDOBJectweakReference_Incr" ("hashValue", "effectiveTime", "OID", "GUIDID", "DisplayName", "IntID")
    (
        select "hashValue", "effectiveTime", "OID", "GUIDID", "DisplayName", "IntID"
        from "BJAC_DW_PROD"."stg"."#CC_AuditeDOBJectweakReference_Incr__dbt_tmp"
    );

  