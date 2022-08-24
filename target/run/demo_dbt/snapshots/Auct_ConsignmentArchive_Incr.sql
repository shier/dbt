
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."Auct_ConsignmentArchive_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#Auct_ConsignmentArchive_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."Auct_ConsignmentArchive_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."Auct_ConsignmentArchive_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."Auct_ConsignmentArchive_Incr" (
                  "ConsignmentArchiveID", "IsOutTakeVehicle", "ReleasedForTransPort", "LotNumber", "ReserveAmount", "CusTestimatedValue", "BJValue", "ConsignmentID", "CustomerAccountID", "ItemID", "ConsignmentStatusID", "AuctionID", "ReserveTypeID", "ShortDescription", "LongDescription", "PhotosReceived", "Showcase", "Created", "UpdateEventID", "CarCard", "Titlein", "OnSite", "CheckedIn", "Completed", "Canceled", "AddressID", "CarInfoID", "OnSpeed", "OnHagerty", "IsCharity", "CreatedUTC", "ModifiedUTC", "EmainventoryID", "EMAEventID", "EMACCEventID", "EmashowEventID", "EmamercEventID", "EmalotID", "MarketingDescription", "AuthorizedWeb", "AuthorizedSocial", "AuthorizedMarketing", "AuthorizedCarList", "LockMarketingDescription", "ReviewStateID", "DisplayStatusID", "AssignedtoUserID", "Priority", "Quality", "RequestedAuctionID", "StockNumber", "CreatedByUserID", "ModifiedByUserID", "ModifiedDateTime", "ModifiedFields", "ConsignmentNotifyBit", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ConsignmentArchiveID", "IsOutTakeVehicle", "ReleasedForTransPort", "LotNumber", "ReserveAmount", "CusTestimatedValue", "BJValue", "ConsignmentID", "CustomerAccountID", "ItemID", "ConsignmentStatusID", "AuctionID", "ReserveTypeID", "ShortDescription", "LongDescription", "PhotosReceived", "Showcase", "Created", "UpdateEventID", "CarCard", "Titlein", "OnSite", "CheckedIn", "Completed", "Canceled", "AddressID", "CarInfoID", "OnSpeed", "OnHagerty", "IsCharity", "CreatedUTC", "ModifiedUTC", "EmainventoryID", "EMAEventID", "EMACCEventID", "EmashowEventID", "EmamercEventID", "EmalotID", "MarketingDescription", "AuthorizedWeb", "AuthorizedSocial", "AuthorizedMarketing", "AuthorizedCarList", "LockMarketingDescription", "ReviewStateID", "DisplayStatusID", "AssignedtoUserID", "Priority", "Quality", "RequestedAuctionID", "StockNumber", "CreatedByUserID", "ModifiedByUserID", "ModifiedDateTime", "ModifiedFields", "ConsignmentNotifyBit", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#Auct_ConsignmentArchive_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  