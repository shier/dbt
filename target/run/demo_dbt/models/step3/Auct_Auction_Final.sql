
  
  if object_id ('"stg"."Auct_Auction_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Auction_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Auction_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Auction_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_Auction_Final__dbt_tmp_temp_view as
    
Select
	[AuctionID],[ShowOnlineBidding],[AuctionCompanyID],[Year],[Code],[Name],[ReadOnly],[OnlineAuction],[CurrentAuction],[AuctionBegins],[AuctionEnds],[AuctionMode],[Created],[UpdateEventID],[Project],[NavPullTime],[BusinessUnit],[SeasonID],[ShowonWeb],[UseCDN],[EMAEventID],[EMACCEventID],[EmamercEventID],[EmashowEventID],[IsArchived],[CDNBaseURL],[AuctionStatusBit],[EmailNotificationBit],[CredentialGroupID],[BidderBadgeID],[PulseQueueID],[AuctionTypeID],[AuctionPickupCutoff],[OnlineCarAuctionID],[OnlineMercAuctionID],[MapImageURL],[NotifyCustomerAfterDate] 
From stg.[Auct_Auction_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_Auction_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Auction_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Auction_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Auction_Final__dbt_tmp_temp_view"
    end


