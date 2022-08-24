
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_ModelDifference_Incr" ("hashValue", "effectiveTime", "Version", "OptimisticLockField", "GcRecord", "OID", "UserID", "ConTextID")
    (
        select "hashValue", "effectiveTime", "Version", "OptimisticLockField", "GcRecord", "OID", "UserID", "ConTextID"
        from "DedicatedSQLpoolBJ"."stg"."#CC_ModelDifference_Incr__dbt_tmp"
    );

  