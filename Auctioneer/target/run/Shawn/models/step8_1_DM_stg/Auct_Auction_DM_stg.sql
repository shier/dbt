
  
  if object_id ('"stg"."Auct_Auction_DM_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Auction_DM_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Auction_DM_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Auction_DM_stg__dbt_tmp"
    end


   EXEC('create view stg.Auct_Auction_DM_stg__dbt_tmp_temp_view as
    

SELECT
    HASHBYTES(''SHA2_256'', 
        COALESCE(CAST(auc.[AUCTIONID] AS VARCHAR(20)), '''')
    ) AS [Auction_Skey],
	auc.[AUCTIONID] as [AuctionID],
	auc.[AUCTIONCOMPANYID] as [AuctionCompanyID],
	auc.[YEAR] as [Year],
	auc.[CODE] as [Code],
	auc.[NAME] as [Name],
	auc.[READONLY] as [ReadOnly],
	auc.[ONLINEAUCTION] as [OnlineAuction],
	auc.[CURRENTAUCTION] as [CurrentAuction],
	auc.[AUCTIONBEGINS] as [AuctionBegins],
	auc.[AUCTIONENDS] as [AuctionEnds],
	auc.[AUCTIONMODE] as [AuctionMode],
	aucloc.[CITY] as [City],
	aucloc.[STATE] as [State],
	aucloc.[COUNTY] as [County],
	CASE WHEN auc.[CREATED]>aucloc.[CREATED]
		THEN aucloc.[CREATED]
	ELSE auc.[CREATED]
	END AS [Created],
	auc.[UPDATEEVENTID] as [UpdateEventID],
	auc.[PROJECT] as [Project],
	auc.[BUSINESSUNIT] as [BusinessUnit],
	auc.[SEASONID] as [SeasonID],
	auc.[SHOWONWEB] as [ShowOnWeb],
	auc.[USECDN] as [UseCDN],
	auc.[EMAEVENTID] as [EMAEventID],
	auc.[EMACCEVENTID] as [EMACCEventID],
	auc.[EMAMERCEVENTID] as [EMAMercEventID],
	auc.[EMASHOWEVENTID] as [EMAShowEventID],
	auc.[ISARCHIVED] as [IsArchived],
	auc.[CDNBASEURL] as [CDNBaseURL],
	auc.[SHOWONLINEBIDDING] as [ShowOnlineBidding],
	auc.[AUCTIONSTATUSBIT] as [AuctionStatusBIT],
	auc.[EMAILNOTIFICATIONBIT] as [EmailNotificationBIT],
	auc.[CREDENTIALGROUPID] as [CredentialGroupID],
	auc.[BIDDERBADGEID] as [BidderBadgeID],
	auc.[PULSEQUEUEID] as [PulseQueueID],
	auc.[AUCTIONTYPEID] as [AuctionTypeID],
	auc.[AUCTIONPICKUPCUTOFF] as [AuctionPickUpCutOff],
	auc.[ONLINECARAUCTIONID] as [OnlineCarAuctionID],
	auc.[ONLINEMERCAUCTIONID] as [OnlineMerchAuctionID],
	auc.[MAPIMAGEURL] as [MapImageURL],
	auc.[NOTIFYCUSTOMERAFTERDATE] as [NotifyCustomerAfterDate]
FROM [stg].[Auct_Auction_FinalView] auc 
LEFT JOIN [stg].[Auct_AuctionLocation_FinalView] aucloc
	ON auc.[AuctionID]=aucloc.[AuctionID]
    ');

  CREATE TABLE "stg"."Auct_Auction_DM_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Auction_DM_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Auction_DM_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Auction_DM_stg__dbt_tmp_temp_view"
    end


