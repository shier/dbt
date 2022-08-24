
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."AH_UserMessages_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#AH_UserMessages_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."AH_UserMessages_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."AH_UserMessages_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."AH_UserMessages_Incr" (
                  "ID", "SEnderID", "RecipientID", "MasTerMessageID", "ListingID", "Sent", "CreatedOn", "UpdatedOn", "DeletedOn", "SuBJect", "Body", "SEnderStatus", "RecipientStatus", "LastUpdatedUser", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "SEnderID", "RecipientID", "MasTerMessageID", "ListingID", "Sent", "CreatedOn", "UpdatedOn", "DeletedOn", "SuBJect", "Body", "SEnderStatus", "RecipientStatus", "LastUpdatedUser", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#AH_UserMessages_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  