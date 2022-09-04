
      
  

    insert into "BJAC_DW_PROD"."stg"."CC_HCategory_Incr" ("hashValue", "effectiveTime", "OID", "Parent", "Name", "OptimisticLockField", "GcRecord")
    (
        select "hashValue", "effectiveTime", "OID", "Parent", "Name", "OptimisticLockField", "GcRecord"
        from "BJAC_DW_PROD"."stg"."#CC_HCategory_Incr__dbt_tmp"
    );

  