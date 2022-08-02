
  
  if object_id ('"stg"."Auct_Auction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Auction_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Auction_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Auction_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Auction_Inter__dbt_tmp_temp_view as
    
Select
	AUCTIONSTATUSBIT AuctionStatusBit,
	EMAILNOTIFICATIONBIT EmailNotificationBit,
	CREDENTIALGROUPID CredentialGroupID,
	BIDDERBADGEID BidderBadgeID,
	PULSEQUEUEID PulseQueueID,
	AUCTIONTYPEID AuctionTypeID,
	CURRENTAUCTION CurrentAuction,
	UPDATEEVENTID UpdateEventID,
	SEASONID SeasonID,
	SHOWONWEB ShowonWeb,
	USECDN UseCDN,
	ISARCHIVED IsArchived,
	ONLINECARAUCTIONID OnlineCarAuctionID,
	ONLINEMERCAUCTIONID OnlineMercAuctionID,
	AUCTIONID AuctionID,
	AUCTIONCOMPANYID AuctionCompanyID,
	YEAR Year,
	ONLINEAUCTION OnlineAuction,
	AUCTIONBEGINS AuctionBegins,
	AUCTIONENDS AuctionEnds,
	CREATED Created,
	AUCTIONPICKUPCUTOFF AuctionPickupCutoff,
	NOTIFYCUSTOMERAFTERDATE NotifyCustomerAfterDate,
	SHOWONLINEBIDDING ShowOnlineBidding,
	cast(EMASHOWEVENTID as nvarchar(4000)) EmashowEventID,
	cast(CDNBASEURL as nvarchar(4000)) CDNBaseURL,
	cast(MAPIMAGEURL as nvarchar(4000)) MapImageURL,
	cast(PROJECT as nvarchar(4000)) Project,
	cast(NAVPULLTIME as nvarchar(4000)) NavPullTime,
	cast(BUSINESSUNIT as nvarchar(4000)) BusinessUnit,
	cast(EMAEVENTID as nvarchar(4000)) EMAEventID,
	cast(EMACCEVENTID as nvarchar(4000)) EMACCEventID,
	cast(EMAMERCEVENTID as nvarchar(4000)) EmamercEventID,
	cast(CODE as nvarchar(4000)) Code,
	cast(NAME as nvarchar(4000)) Name,
	cast(READONLY as nvarchar(4000)) ReadOnly,
	cast(AUCTIONMODE as nvarchar(4000)) AuctionMode
From Auct_Auction_Raw
    ');

  CREATE TABLE "stg"."Auct_Auction_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Auction_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Auction_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Auction_Inter__dbt_tmp_temp_view"
    end


