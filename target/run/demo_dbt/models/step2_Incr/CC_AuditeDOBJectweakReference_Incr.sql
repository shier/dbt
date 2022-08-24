
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_AuditeDOBJectweakReference_Incr" ("hashValue", "effectiveTime", "OID", "GUIDID", "DisplayName", "IntID")
    (
        select "hashValue", "effectiveTime", "OID", "GUIDID", "DisplayName", "IntID"
        from "DedicatedSQLpoolBJ"."stg"."#CC_AuditeDOBJectweakReference_Incr__dbt_tmp"
    );

  