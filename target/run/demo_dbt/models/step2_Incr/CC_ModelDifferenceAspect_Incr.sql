
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_ModelDifferenceAspect_Incr" ("hashValue", "effectiveTime", "OID", "Name", "Xml", "Owner", "OptimisticLockField", "GcRecord")
    (
        select "hashValue", "effectiveTime", "OID", "Name", "Xml", "Owner", "OptimisticLockField", "GcRecord"
        from "DedicatedSQLpoolBJ"."stg"."#CC_ModelDifferenceAspect_Incr__dbt_tmp"
    );

  