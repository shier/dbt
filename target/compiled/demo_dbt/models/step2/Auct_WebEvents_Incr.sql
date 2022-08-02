
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(VenueStartDate as varchar), Cast(VenueEndDate as varchar), Cast(ModifiedDateTime as varchar), Cast(WeatherLocationID as varchar), Cast(EventStatusBit as varchar), Cast(AcceptingApplicationsBit as varchar), Cast(EventTypeID as varchar), Address, City, State, AuctionProject, BlockLiveStreamID, LivesTageStreamID, BlockLiveStreamlsembedID, LivesTageStreamlsembedID, AcceptingConsignmentsMessage, VendorSiteMapPdfURL, TicketPackageURL, EventName, EventURLName, HotelsForHopeID, VipPackagePageName, PostalCode, SiteMapImageURL, SiteMapPdfURL, GooglEMapdirectionURL, VenueName, VenueImage, CDNBaseURL, LivesTagePageURL, ModifiedByUserName, License, MapdirectionImageURL, Cast(Latitude as varchar), Cast(Longitude as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_WebEvents_Inter]
	)
Select * From hashData
