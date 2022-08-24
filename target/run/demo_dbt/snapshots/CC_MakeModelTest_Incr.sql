
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."CC_MakeModelTest_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#CC_MakeModelTest_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."CC_MakeModelTest_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."CC_MakeModelTest_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."CC_MakeModelTest_Incr" (
                  "ID", "VehicleTypeID", "CountryID", "CreateDate", "ModifyDate", "IsActive", "Make", "Model", "Makeplural", "Modelplural", "Makeslug", "Modelslug", "RelatedModelslugs", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "VehicleTypeID", "CountryID", "CreateDate", "ModifyDate", "IsActive", "Make", "Model", "Makeplural", "Modelplural", "Makeslug", "Modelslug", "RelatedModelslugs", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#CC_MakeModelTest_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  