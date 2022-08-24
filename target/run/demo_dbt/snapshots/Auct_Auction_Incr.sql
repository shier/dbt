
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."Auct_Auction_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#Auct_Auction_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."Auct_Auction_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."Auct_Auction_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."Auct_Auction_Incr" (
                  "AuctionID", "ShowOnlineBidding", "AuctionCompanyID", "Year", "Code", "Name", "ReadOnly", "OnlineAuction", "CurrentAuction", "AuctionBegins", "AuctionEnds", "AuctionMode", "Created", "UpdateEventID", "Project", "NavPullTime", "BusinessUnit", "SeasonID", "ShowonWeb", "UseCDN", "EMAEventID", "EMACCEventID", "EmamercEventID", "EmashowEventID", "IsArchived", "CDNBaseURL", "AuctionStatusBit", "EmailNotificationBit", "CredentialGroupID", "BidderBadgeID", "PulseQueueID", "AuctionTypeID", "AuctionPickupCutoff", "OnlineCarAuctionID", "OnlineMercAuctionID", "MapImageURL", "NotifyCustomerAfterDate", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "AuctionID", "ShowOnlineBidding", "AuctionCompanyID", "Year", "Code", "Name", "ReadOnly", "OnlineAuction", "CurrentAuction", "AuctionBegins", "AuctionEnds", "AuctionMode", "Created", "UpdateEventID", "Project", "NavPullTime", "BusinessUnit", "SeasonID", "ShowonWeb", "UseCDN", "EMAEventID", "EMACCEventID", "EmamercEventID", "EmashowEventID", "IsArchived", "CDNBaseURL", "AuctionStatusBit", "EmailNotificationBit", "CredentialGroupID", "BidderBadgeID", "PulseQueueID", "AuctionTypeID", "AuctionPickupCutoff", "OnlineCarAuctionID", "OnlineMercAuctionID", "MapImageURL", "NotifyCustomerAfterDate", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#Auct_Auction_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  