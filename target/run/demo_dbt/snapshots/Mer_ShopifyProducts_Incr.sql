
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."Mer_ShopifyProducts_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#Mer_ShopifyProducts_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."Mer_ShopifyProducts_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."Mer_ShopifyProducts_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."Mer_ShopifyProducts_Incr" (
                  "ID", "Title", "Bodyhtml", "Vendor", "Options2Name", "Options2Values", "Options3Name", "Options3Values", "ProductType", "Handle", "Tags", "Publishedscope", "Options1Name", "Options1Values", "PublishedDate", "CreatedDate", "Updateddate", "RemovedDate", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "Title", "Bodyhtml", "Vendor", "Options2Name", "Options2Values", "Options3Name", "Options3Values", "ProductType", "Handle", "Tags", "Publishedscope", "Options1Name", "Options1Values", "PublishedDate", "CreatedDate", "Updateddate", "RemovedDate", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#Mer_ShopifyProducts_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  