
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."AH_Addresses_snapshot"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#AH_Addresses_snapshot__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."AH_Addresses_snapshot".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."AH_Addresses_snapshot".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."AH_Addresses_snapshot" (
                  "Createdon", "Updatedon", "Deletedon", "ID", "CountryID", "UserID", "Stateregion", "ZipPostal", "LastUpdatedUser", "Description", "FirstName", "LastName", "STreet1", "STreet2", "City", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "Createdon", "Updatedon", "Deletedon", "ID", "CountryID", "UserID", "Stateregion", "ZipPostal", "LastUpdatedUser", "Description", "FirstName", "LastName", "STreet1", "STreet2", "City", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#AH_Addresses_snapshot__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  