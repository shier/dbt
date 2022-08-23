
      
  
  if object_id ('"stg"."Auct_Event_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Event_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Event_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Event_Incr"
    end


   EXEC('create view stg.Auct_Event_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(StartDate as varchar), Cast(EndDate as varchar), Cast(Created as varchar), Cast(BillingAddressID as varchar), Cast(VenueID as varchar), Cast(Year as varchar), Cast(ParentEventID as varchar), Cast(EventTypeID as varchar), Cast(Active as varchar), Cast(CreatedByUserID as varchar), Cast(LocationAddressID as varchar), Cast(ShippingAddressID as varchar), ProjectCode, ImageURL, Name, Code)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Event_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Event_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Event_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Event_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Event_Incr_temp_view"
    end



  