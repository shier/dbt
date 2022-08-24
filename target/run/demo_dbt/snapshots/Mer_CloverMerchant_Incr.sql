
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."Mer_CloverMerchant_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#Mer_CloverMerchant_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."Mer_CloverMerchant_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."Mer_CloverMerchant_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."Mer_CloverMerchant_Incr" (
                  "MerchantID", "Token", "CreatedDate", "LastloadedDate", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "MerchantID", "Token", "CreatedDate", "LastloadedDate", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#Mer_CloverMerchant_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  