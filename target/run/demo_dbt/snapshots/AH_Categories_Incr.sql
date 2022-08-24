
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."AH_Categories_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#AH_Categories_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."AH_Categories_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."AH_Categories_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."AH_Categories_Incr" (
                  "ID", "ParentCategoryID", "DisplayOrder", "Lft", "Rgt", "CreatedOn", "UpdatedOn", "DeletedOn", "RolesAllowed", "EnabledCustomProperty", "MetaKeyWords", "MetaDescription", "PageTitle", "Pagecontent", "Name", "LastUpdatedUser", "Type", "MvcAction", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "ParentCategoryID", "DisplayOrder", "Lft", "Rgt", "CreatedOn", "UpdatedOn", "DeletedOn", "RolesAllowed", "EnabledCustomProperty", "MetaKeyWords", "MetaDescription", "PageTitle", "Pagecontent", "Name", "LastUpdatedUser", "Type", "MvcAction", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#AH_Categories_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  