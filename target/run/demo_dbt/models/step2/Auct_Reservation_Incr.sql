
      
  
  if object_id ('"stg"."Auct_Reservation_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Reservation_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Reservation_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Reservation_Incr"
    end


   EXEC('create view stg.Auct_Reservation_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(StartDate as varchar), Cast(EndDate as varchar), Cast(CheckinDate as varchar), Cast(CheckOutDate as varchar), Cast(CustomerAccountID as varchar), Cast(ReservationStatusID as varchar), Cast(ChargeID as varchar), Cast(OccupantCustomerAccountID as varchar), Cast(AddressID as varchar), Cast(PhoneID as varchar), Cast(SiteCategoryID as varchar), Cast(SiteID as varchar), Cast(EventID as varchar), Cast(IsCheckedIn as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Reservation_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Reservation_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Reservation_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Reservation_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Reservation_Incr_temp_view"
    end



  