
  
  if object_id ('"stg"."Auct_WebEventsArchive_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WebEventsArchive_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_WebEventsArchive_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_WebEventsArchive_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_WebEventsArchive_Final__dbt_tmp_temp_view as
    
Select
	[EventArchiveID],[EventID],[Address],[City],[State],[PostalCode],[SiteMapImageURL],[VendorSiteMapPdfURL],[SiteMapPdfURL],[GooglEMapdirectionURL],[WeatherLocationID],[VenueName],[VenueStartDate],[VenueEndDate],[VenueImage],[TicketPackageURL],[EventStatusBit],[EventName],[EventURLName],[HotelsForHopeID],[VipPackagePageName],[LivesTagePageURL],[AuctionProject],[AcceptingApplicationsBit],[BlockLiveStreamID],[LivesTageStreamID],[BlockLiveStreamlsembedID],[LivesTageStreamlsembedID],[AcceptingConsignmentsMessage],[CDNBaseURL],[ModifiedByUserName],[ModifiedDateTime],[License],[MapdirectionImageURL],[Latitude],[Longitude] 
From stg.[Auct_WebEventsArchive_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_WebEventsArchive_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_WebEventsArchive_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_WebEventsArchive_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WebEventsArchive_Final__dbt_tmp_temp_view"
    end


