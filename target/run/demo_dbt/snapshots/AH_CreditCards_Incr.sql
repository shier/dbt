
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."AH_CreditCards_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#AH_CreditCards_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."AH_CreditCards_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."AH_CreditCards_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."AH_CreditCards_Incr" (
                  "ID", "ExpirationMonth", "ExpirationYear", "CreditCardTypeID", "UserID", "AddressID", "CreatedOn", "UpdatedOn", "DeletedOn", "CardNumber", "LastUpdatedUser", "LastFourdigits", "Description", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "ExpirationMonth", "ExpirationYear", "CreditCardTypeID", "UserID", "AddressID", "CreatedOn", "UpdatedOn", "DeletedOn", "CardNumber", "LastUpdatedUser", "LastFourdigits", "Description", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#AH_CreditCards_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  