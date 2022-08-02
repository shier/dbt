
      
  
  if object_id ('"stg"."AH_ReListHistory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ReListHistory_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ReListHistory_Incr"','U') is not null
    begin
    drop table "stg"."AH_ReListHistory_Incr"
    end


   EXEC('create view stg.AH_ReListHistory_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(MaxBidAmount as varchar), Cast(ProxyBidAmount as varchar), Cast(BidIncrement as varchar), Cast(ReListdttm as varchar), Cast(Startdttm_Old as varchar), Cast(Startdttm_New as varchar), Cast(Enddttm_Old as varchar), Cast(Enddttm_New as varchar), Cast(NewreListiteration as varchar), Cast(Duration_Old as varchar), Cast(Duration_New as varchar), Cast(HighBidderID as varchar), Cast(BidCount as varchar), Cast(ListingID as varchar), Cast(CurrentPrice_Old as varchar), Cast(CurrentPrice_New as varchar), Cast(ReservePrice as varchar), ListingTitle)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ReListHistory_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."AH_ReListHistory_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ReListHistory_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_ReListHistory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ReListHistory_Incr_temp_view"
    end



  