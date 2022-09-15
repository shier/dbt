
      
      
      delete from "BJAC_DW_PROD"."stg"."CC_ModelDifference_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."stg"."#CC_ModelDifference_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."stg"."CC_ModelDifference_Incr" ("Version", "OptimisticLockField", "GcRecord", "OID", "UserID", "ConTextID", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "Version", "OptimisticLockField", "GcRecord", "OID", "UserID", "ConTextID", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."stg"."#CC_ModelDifference_Incr__dbt_tmp"
          )


  