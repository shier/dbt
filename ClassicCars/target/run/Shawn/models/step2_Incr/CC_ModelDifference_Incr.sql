
      
  

    insert into "BJAC_DW_PROD"."stg"."CC_ModelDifference_Incr" ("hashValue", "effectiveTime", "Version", "OptimisticLockField", "GcRecord", "OID", "UserID", "ConTextID")
    (
        select "hashValue", "effectiveTime", "Version", "OptimisticLockField", "GcRecord", "OID", "UserID", "ConTextID"
        from "BJAC_DW_PROD"."stg"."#CC_ModelDifference_Incr__dbt_tmp"
    );

  