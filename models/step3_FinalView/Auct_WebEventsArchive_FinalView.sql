{{ config(materialized='view',schema='stg')}}
Select
	[EventArchiveID],[EventID],[Address],[City],[State],[PostalCode],[SiteMapImageURL],[VendorSiteMapPdfURL],[SiteMapPdfURL],[GooglEMapdirectionURL],[WeatherLocationID],[VenueName],[VenueStartDate],[VenueEndDate],[VenueImage],[TicketPackageURL],[EventStatusBit],[EventName],[EventURLName],[HotelsForHopeID],[VipPackagePageName],[LivesTagePageURL],[AuctionProject],[AcceptingApplicationsBit],[BlockLiveStreamID],[LivesTageStreamID],[BlockLiveStreamlsembedID],[LivesTageStreamlsembedID],[AcceptingConsignmentsMessage],[CDNBaseURL],[ModifiedByUserName],[ModifiedDateTime],[License],[MapdirectionImageURL],[Latitude],[Longitude] 
From stg.[Auct_WebEventsArchive_Incr] 
Where [dbt_valid_to] is null