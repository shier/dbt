
Select
	[EventArchiveID],[Latitude],[Longitude],[LivesTageStreamID],[BlockLiveStreamlsembedID],[LivesTageStreamlsembedID],[AcceptingConsignmentsMessage],[CDNBaseURL],[ModifiedByUserName],[EventURLName],[HotelsForHopeID],[VipPackagePageName],[LivesTagePageURL],[AuctionProject],[BlockLiveStreamID],[SiteMapPdfURL],[GooglEMapdirectionURL],[VenueName],[VenueImage],[TicketPackageURL],[EventName],[Address],[City],[State],[PostalCode],[SiteMapImageURL],[VendorSiteMapPdfURL],[License],[MapdirectionImageURL],[VenueStartDate],[VenueEndDate],[ModifiedDateTime],[EventStatusBit],[AcceptingApplicationsBit],[WeatherLocationID],[EventID] 
From stg.[Auct_WebEventsArchive_Incr] 
Where [dbt_valid_to] is null