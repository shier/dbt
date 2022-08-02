
  
  if object_id ('"stg"."Auct_WebEvents_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WebEvents_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_WebEvents_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_WebEvents_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_WebEvents_Final__dbt_tmp_temp_view as
    
Select
	[EventID],[VenueStartDate],[VenueEndDate],[ModifiedDateTime],[WeatherLocationID],[EventStatusBit],[AcceptingApplicationsBit],[EventTypeID],[Address],[City],[State],[AuctionProject],[BlockLiveStreamID],[LivesTageStreamID],[BlockLiveStreamlsembedID],[LivesTageStreamlsembedID],[AcceptingConsignmentsMessage],[VendorSiteMapPdfURL],[TicketPackageURL],[EventName],[EventURLName],[HotelsForHopeID],[VipPackagePageName],[PostalCode],[SiteMapImageURL],[SiteMapPdfURL],[GooglEMapdirectionURL],[VenueName],[VenueImage],[CDNBaseURL],[LivesTagePageURL],[ModifiedByUserName],[License],[MapdirectionImageURL],[Latitude],[Longitude] 
From stg.[Auct_WebEvents_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_WebEvents_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_WebEvents_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_WebEvents_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WebEvents_Final__dbt_tmp_temp_view"
    end


