
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."AH_ListingTypeproperties_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#AH_ListingTypeproperties_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."AH_ListingTypeproperties_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."AH_ListingTypeproperties_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."AH_ListingTypeproperties_Incr" (
                  "ID", "StringnativeValue", "EnumnativeValue", "LastUpdatedUser", "Scope", "DecimalnativeValue", "DeletedOn", "DateTimenativeValue", "CreatedOn", "UpdatedOn", "IntnativeValue", "CustomFieldID", "ListingTypeID", "BoolnativeValue", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "StringnativeValue", "EnumnativeValue", "LastUpdatedUser", "Scope", "DecimalnativeValue", "DeletedOn", "DateTimenativeValue", "CreatedOn", "UpdatedOn", "IntnativeValue", "CustomFieldID", "ListingTypeID", "BoolnativeValue", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#AH_ListingTypeproperties_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  