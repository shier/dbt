
  
  if object_id ('"dbo"."Auct_Auction_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Auction_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Auction_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Auction_DM__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Auction_DM__dbt_tmp_temp_view as
    
with Auct_Auction_Ex as (
    Select
        -- [NavPullTime],
	    [Created],[AuctionID],[AuctionCompanyID],[Year],[Code],[Name],[ReadOnly],[OnlineAuction],[CurrentAuction],
        [AuctionBegins],[AuctionEnds],[AuctionMode],[UpdateEventID],[Project],[BusinessUnit],[SeasonID],
        [ShowonWeb],[UseCDN],[EMAEventID],[EMACCEventID],[EmamercEventID],[EmashowEventID],[IsArchived],[CDNBaseURL],[ShowOnlineBidding],
        [AuctionStatusBit],[EmailNotificationBit],[CredentialGroupID],[BidderBadgeID],[PulseQueueID],[AuctionTypeID],
        [AuctionPickupCutoff],[OnlineCarAuctionID],[OnlineMercAuctionID],[MapImageURL],[NotifyCustomerAfterDate] 
    From stg.[Auct_Auction_FinalView] 
),
Auct_AuctionLocation_Ex as (
    Select
        -- [AuctionLocationID],[UpdateEventID],
        [AuctionID],[City],[State],[County],[Created] 
    From stg.[Auct_AuctionLocation_FinalView] 
)
SELECT
    HASHBYTES(''SHA2_256'', 
        COALESCE(CAST(auc.[AUCTIONID] AS VARCHAR(20)), '''')
    ) AS [Auction_Skey],
	auc.[AUCTIONID],
	auc.[AUCTIONCOMPANYID],
	auc.[YEAR],
	auc.[CODE],
	auc.[NAME],
	auc.[READONLY],
	auc.[ONLINEAUCTION],
	auc.[CURRENTAUCTION],
	auc.[AUCTIONBEGINS],
	auc.[AUCTIONENDS],
	auc.[AUCTIONMODE],
	aucloc.[CITY],
	aucloc.[STATE],
	aucloc.[COUNTY],
	CASE WHEN auc.[CREATED]>aucloc.[CREATED]
		THEN aucloc.[CREATED]
	ELSE auc.[CREATED]
	END AS [Created],
	auc.[UPDATEEVENTID],
	auc.[PROJECT],
	auc.[BUSINESSUNIT],
	auc.[SEASONID],
	auc.[SHOWONWEB],
	auc.[USECDN],
	auc.[EMAEVENTID],
	auc.[EMACCEVENTID],
	auc.[EMAMERCEVENTID],
	auc.[EMASHOWEVENTID],
	auc.[ISARCHIVED],
	auc.[CDNBASEURL],
	auc.[SHOWONLINEBIDDING],
	auc.[AUCTIONSTATUSBIT],
	auc.[EMAILNOTIFICATIONBIT],
	auc.[CREDENTIALGROUPID],
	auc.[BIDDERBADGEID],
	auc.[PULSEQUEUEID],
	auc.[AUCTIONTYPEID],
	auc.[AUCTIONPICKUPCUTOFF],
	auc.[ONLINECARAUCTIONID],
	auc.[ONLINEMERCAUCTIONID],
	auc.[MAPIMAGEURL],
	auc.[NOTIFYCUSTOMERAFTERDATE]
FROM Auct_Auction_Ex auc 
LEFT JOIN Auct_AuctionLocation_Ex aucloc
ON auc.[AuctionID]=aucloc.[AuctionID]
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


