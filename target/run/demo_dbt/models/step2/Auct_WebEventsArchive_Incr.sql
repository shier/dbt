
      
  
  if object_id ('"stg"."Auct_WebEventsArchive_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WebEventsArchive_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_WebEventsArchive_Incr"','U') is not null
    begin
    drop table "stg"."Auct_WebEventsArchive_Incr"
    end


   EXEC('create view stg.Auct_WebEventsArchive_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Latitude as varchar), Cast(Longitude as varchar), LivesTageStreamID, BlockLiveStreamlsembedID, LivesTageStreamlsembedID, AcceptingConsignmentsMessage, CDNBaseURL, ModifiedByUserName, EventURLName, HotelsForHopeID, VipPackagePageName, LivesTagePageURL, AuctionProject, BlockLiveStreamID, SiteMapPdfURL, GooglEMapdirectionURL, VenueName, VenueImage, TicketPackageURL, EventName, Address, City, State, PostalCode, SiteMapImageURL, VendorSiteMapPdfURL, License, MapdirectionImageURL, Cast(VenueStartDate as varchar), Cast(VenueEndDate as varchar), Cast(ModifiedDateTime as varchar), Cast(EventStatusBit as varchar), Cast(AcceptingApplicationsBit as varchar), Cast(WeatherLocationID as varchar), EventID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_WebEventsArchive_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_WebEventsArchive_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_WebEventsArchive_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_WebEventsArchive_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WebEventsArchive_Incr_temp_view"
    end



  