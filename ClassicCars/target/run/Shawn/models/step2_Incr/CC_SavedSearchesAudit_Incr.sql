
      
      
      delete from "BJAC_DW_PROD"."stg"."CC_SavedSearchesAudit_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."stg"."#CC_SavedSearchesAudit_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."stg"."CC_SavedSearchesAudit_Incr" ("ID", "State", "ZipCode", "SearchDescription", "Dml_Operation", "SavedSearchName", "Make", "Model", "Country", "PriceFrom", "Priceto", "IsActive", "IncludePrivate", "IncludeDealer", "IncludeAuction", "UserID", "YearFrom", "Yearto", "Distance", "VehicleTypeID", "AlertModeID", "AlertFrequencyID", "SavedSearchAuditPK", "AuditentryDateUTC", "CreateDate", "ModifyDate", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "ID", "State", "ZipCode", "SearchDescription", "Dml_Operation", "SavedSearchName", "Make", "Model", "Country", "PriceFrom", "Priceto", "IsActive", "IncludePrivate", "IncludeDealer", "IncludeAuction", "UserID", "YearFrom", "Yearto", "Distance", "VehicleTypeID", "AlertModeID", "AlertFrequencyID", "SavedSearchAuditPK", "AuditentryDateUTC", "CreateDate", "ModifyDate", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."stg"."#CC_SavedSearchesAudit_Incr__dbt_tmp"
          )


  