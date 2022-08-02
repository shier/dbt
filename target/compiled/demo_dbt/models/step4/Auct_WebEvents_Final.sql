
Select
	[EventID],[VenueStartDate],[VenueEndDate],[ModifiedDateTime],[WeatherLocationID],[EventStatusBit],[AcceptingApplicationsBit],[EventTypeID],[Address],[City],[State],[AuctionProject],[BlockLiveStreamID],[LivesTageStreamID],[BlockLiveStreamlsembedID],[LivesTageStreamlsembedID],[AcceptingConsignmentsMessage],[VendorSiteMapPdfURL],[TicketPackageURL],[EventName],[EventURLName],[HotelsForHopeID],[VipPackagePageName],[PostalCode],[SiteMapImageURL],[SiteMapPdfURL],[GooglEMapdirectionURL],[VenueName],[VenueImage],[CDNBaseURL],[LivesTagePageURL],[ModifiedByUserName],[License],[MapdirectionImageURL],[Latitude],[Longitude] 
From stg.[Auct_WebEvents_Incr] 
Where [dbt_valid_to] is null