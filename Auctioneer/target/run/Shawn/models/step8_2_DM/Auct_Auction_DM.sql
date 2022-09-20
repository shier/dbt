
  
  if object_id ('"dbo"."Auct_Auction_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Auction_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Auction_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Auction_DM__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Auction_DM__dbt_tmp_temp_view as
    
SELECT
	[Auction_Skey],
	[AuctionID],
	[AuctionCompanyID],
	[Year],
	[Code],
	[Name],
	[ReadOnly],
	[OnlineAuction],
	[CurrentAuction],
	[AuctionBegins],
	[AuctionEnds],
	[AuctionMode],
	[City],
	[State],
	[County],
	[Created],
	[UpdateEventID],
	[Project],
	[BusinessUnit],
	[SeasonID],
	[ShowOnWeb],
	[UseCDN],
	[EMAEventID],
	[EMACCEventID],
	[EMAMercEventID],
	[EMAShowEventID],
	[IsArchived],
	[CDNBaseURL],
	[ShowOnlineBidding],
	[AuctionStatusBIT],
	[EmailNotificationBIT],
	[CredentialGroupID],
	[BidderBadgeID],
	[PulseQueueID],
	[AuctionTypeID],
	[AuctionPickUpCutOff],
	[OnlineCarAuctionID],
	[OnlineMerchAuctionID],
	[MapImageURL],
	[NotifyCustomerAfterDate]
FROM [stg].[Auct_Auction_DM_stg]
    ');

  CREATE TABLE "dbo"."Auct_Auction_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Auction_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Auction_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Auction_DM__dbt_tmp_temp_view"
    end


