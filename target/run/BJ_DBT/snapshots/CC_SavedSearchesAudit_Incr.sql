
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."CC_SavedSearchesAudit_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#CC_SavedSearchesAudit_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."CC_SavedSearchesAudit_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."CC_SavedSearchesAudit_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."CC_SavedSearchesAudit_Incr" (
                  "ID", "State", "ZipCode", "SearchDescription", "Dml_Operation", "SavedSearchName", "Make", "Model", "Country", "PriceFrom", "Priceto", "IsActive", "IncludePrivate", "IncludeDealer", "IncludeAuction", "UserID", "YearFrom", "Yearto", "Distance", "VehicleTypeID", "AlertModeID", "AlertFrequencyID", "SavedSearchAuditPK", "AuditentryDateUTC", "CreateDate", "ModifyDate", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "State", "ZipCode", "SearchDescription", "Dml_Operation", "SavedSearchName", "Make", "Model", "Country", "PriceFrom", "Priceto", "IsActive", "IncludePrivate", "IncludeDealer", "IncludeAuction", "UserID", "YearFrom", "Yearto", "Distance", "VehicleTypeID", "AlertModeID", "AlertFrequencyID", "SavedSearchAuditPK", "AuditentryDateUTC", "CreateDate", "ModifyDate", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#CC_SavedSearchesAudit_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  