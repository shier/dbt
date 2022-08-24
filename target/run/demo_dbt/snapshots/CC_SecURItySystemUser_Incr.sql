
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."CC_SecURItySystemUser_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#CC_SecURItySystemUser_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."CC_SecURItySystemUser_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."CC_SecURItySystemUser_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."CC_SecURItySystemUser_Incr" (
                  "UserName", "ChangePasswordonFirstLogon", "IsActive", "OID", "StoredPassword", "OptimisticLockField", "GcRecord", "OBJectType", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "UserName", "ChangePasswordonFirstLogon", "IsActive", "OID", "StoredPassword", "OptimisticLockField", "GcRecord", "OBJectType", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#CC_SecURItySystemUser_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  