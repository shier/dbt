create view "stg"."Auct_WebEventsArchive_InterView__dbt_tmp" as
    
Select
	cast([EventArchiveID] as nvarchar(4000)) [EventArchiveID],
	cast([EventID] as nvarchar(4000)) [EventID],
	cast([Address] as nvarchar(4000)) [Address],
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([PostalCode] as nvarchar(4000)) [PostalCode],
	cast([SiteMapImageUrl] as nvarchar(4000)) [SiteMapImageURL],
	cast([VendorSiteMapPdfUrl] as nvarchar(4000)) [VendorSiteMapPdfURL],
	cast([SiteMapPdfUrl] as nvarchar(4000)) [SiteMapPdfURL],
	cast([GoogleMapDirectionUrl] as nvarchar(4000)) [GooglEMapdirectionURL],
	[WeatherLocationID] [WeatherLocationID],
	cast([VenueName] as nvarchar(4000)) [VenueName],
	[VenueStartDate] [VenueStartDate],
	[VenueEndDate] [VenueEndDate],
	cast([VenueImage] as nvarchar(4000)) [VenueImage],
	cast([TicketPackageURL] as nvarchar(4000)) [TicketPackageURL],
	[EventStatusBit] [EventStatusBit],
	cast([EventName] as nvarchar(4000)) [EventName],
	cast([EventUrlName] as nvarchar(4000)) [EventURLName],
	cast([HotelsForHopeID] as nvarchar(4000)) [HotelsForHopeID],
	cast([VIPPackagePageName] as nvarchar(4000)) [VipPackagePageName],
	cast([LiveStagePageURL] as nvarchar(4000)) [LivesTagePageURL],
	cast([AuctionProject] as nvarchar(4000)) [AuctionProject],
	[AcceptingApplicationsBit] [AcceptingApplicationsBit],
	cast([BlockLiveStreamID] as nvarchar(4000)) [BlockLiveStreamID],
	cast([LIveStageStreamID] as nvarchar(4000)) [LivesTageStreamID],
	cast([BlockLiveStreamLSEmbedID] as nvarchar(4000)) [BlockLiveStreamlsembedID],
	cast([LiveStageStreamLSEmbedID] as nvarchar(4000)) [LivesTageStreamlsembedID],
	cast([AcceptingConsignmentsMessage] as nvarchar(4000)) [AcceptingConsignmentsMessage],
	cast([CDNBaseURL] as nvarchar(4000)) [CDNBaseURL],
	cast([ModifiedByUserName] as nvarchar(4000)) [ModifiedByUserName],
	[ModifiedDateTime] [ModifiedDateTime],
	cast([License] as nvarchar(4000)) [License],
	cast([MapDirectionImageUrl] as nvarchar(4000)) [MapdirectionImageURL],
	[Latitude] [Latitude],
	[Longitude] [Longitude]
From stg.[Auct_WebEventsArchive_Raw]
