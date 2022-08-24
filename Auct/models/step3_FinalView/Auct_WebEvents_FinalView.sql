{{ config(materialized='view',schema='stg')}}
Select
	[EventID],[Latitude],[Longitude],[Address],[City],[State],[PostalCode],[SiteMapImageURL],[SiteMapPdfURL],[GooglEMapdirectionURL],[WeatherLocationID],[VenueName],[VenueStartDate],[VenueEndDate],[VenueImage],[VendorSiteMapPdfURL],[TicketPackageURL],[EventStatusBit],[EventName],[EventURLName],[HotelsForHopeID],[VipPackagePageName],[AuctionProject],[AcceptingApplicationsBit],[BlockLiveStreamID],[LivesTageStreamID],[BlockLiveStreamlsembedID],[LivesTageStreamlsembedID],[AcceptingConsignmentsMessage],[CDNBaseURL],[LivesTagePageURL],[ModifiedByUserName],[ModifiedDateTime],[License],[EventTypeID],[MapdirectionImageURL] 
From stg.[Auct_WebEvents_Incr] 
Where [dbt_valid_to] is null