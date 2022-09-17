
Select
	cast([ShowOnlineBidding] as bit) [SHOWONLINEBIDDING],
	cast([AuctionID] as int) [AUCTIONID],
	cast([AuctionCompanyID] as int) [AUCTIONCOMPANYID],
	cast([Year] as int) [YEAR],
	cast([Code] as char(5)) [CODE],
	cast([Name] as nvarchar(100)) [NAME],
	cast([ReadOnly] as char(1)) [READONLY],
	cast([OnlineAuction] as int) [ONLINEAUCTION],
	cast([CurrentAuction] as int) [CURRENTAUCTION],
	cast([AuctionBegins] as datetime) [AUCTIONBEGINS],
	cast([AuctionEnds] as datetime) [AUCTIONENDS],
	cast([AuctionMode] as char(10)) [AUCTIONMODE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Project] as varchar(20)) [PROJECT],
	cast([NavPullTime] as nvarchar(4000)) [NAVPULLTIME],
	cast([BusinessUnit] as varchar(50)) [BUSINESSUNIT],
	cast([SeasonID] as int) [SEASONID],
	cast([ShowonWeb] as int) [SHOWONWEB],
	cast([UseCDN] as int) [USECDN],
	cast([EMAEventID] as varchar(38)) [EMAEVENTID],
	cast([EMACCEventID] as varchar(38)) [EMACCEVENTID],
	cast([EmamercEventID] as varchar(38)) [EMAMERCEVENTID],
	cast([EmashowEventID] as varchar(38)) [EMASHOWEVENTID],
	cast([IsArchived] as int) [ISARCHIVED],
	cast([CDNBaseURL] as varchar(2048)) [CDNBASEURL],
	cast([AuctionStatusBit] as int) [AUCTIONSTATUSBIT],
	cast([EmailNotificationBit] as int) [EMAILNOTIFICATIONBIT],
	cast([CredentialGroupID] as int) [CREDENTIALGROUPID],
	cast([BidderBadgeID] as int) [BIDDERBADGEID],
	cast([PulseQueueID] as int) [PULSEQUEUEID],
	cast([AuctionTypeID] as int) [AUCTIONTYPEID],
	cast([AuctionPickupCutoff] as datetime) [AUCTIONPICKUPCUTOFF],
	cast([OnlineCarAuctionID] as int) [ONLINECARAUCTIONID],
	cast([OnlineMercAuctionID] as int) [ONLINEMERCAUCTIONID],
	cast([MapImageURL] as varchar(2048)) [MAPIMAGEURL],
	cast([NotifyCustomerAfterDate] as datetime) [NOTIFYCUSTOMERAFTERDATE] 
From stg.[Auct_Auction_FinalView]