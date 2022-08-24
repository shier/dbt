
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."CC_SearchHistory_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#CC_SearchHistory_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."CC_SearchHistory_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."CC_SearchHistory_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."CC_SearchHistory_Incr" (
                  "SearchHistoryPK", "PageNumber", "PageSize", "UserFK", "YearFrom", "Yearto", "Distance", "SearchDateUTC", "VehicleTypeFK", "Year", "SortAscending", "IncludePrivate", "IncludeDealer", "IncludeAuction", "CausedBackofftoHAppen", "WasExeCutedDuetoBackoff", "PriceFrom", "Priceto", "SortTerm", "DataTokenID", "IpAddress", "UserAgent", "Make", "Model", "Country", "State", "ZipCode", "SearchTerms", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "SearchHistoryPK", "PageNumber", "PageSize", "UserFK", "YearFrom", "Yearto", "Distance", "SearchDateUTC", "VehicleTypeFK", "Year", "SortAscending", "IncludePrivate", "IncludeDealer", "IncludeAuction", "CausedBackofftoHAppen", "WasExeCutedDuetoBackoff", "PriceFrom", "Priceto", "SortTerm", "DataTokenID", "IpAddress", "UserAgent", "Make", "Model", "Country", "State", "ZipCode", "SearchTerms", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#CC_SearchHistory_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  