
      
  
  if object_id ('"stg"."Auct_EventSite_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_EventSite_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_EventSite_Incr"','U') is not null
    begin
    drop table "stg"."Auct_EventSite_Incr"
    end


   EXEC('create view stg.Auct_EventSite_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([EventID] as varchar), Cast([SiteID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_EventSite_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_EventSite_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_EventSite_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_EventSite_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_EventSite_Incr_temp_view"
    end



  