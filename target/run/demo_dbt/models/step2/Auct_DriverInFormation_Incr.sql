
      
  
  if object_id ('"stg"."Auct_DriverInFormation_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DriverInFormation_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DriverInFormation_Incr"','U') is not null
    begin
    drop table "stg"."Auct_DriverInFormation_Incr"
    end


   EXEC('create view stg.Auct_DriverInFormation_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(ConsignmentID as varchar), Cast(TentLocationID as varchar), Cast(DeLiveryCarrierID as varchar), Cast(CheckedInUsersID as varchar), Cast(CheckedOutUsersID as varchar), Cast(ShippedCarrierID as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar), SpareParts, VINLocation, ShippedCarrierOther, CheckedOutName, BidderNumber, LicenseNumber, TentSpaceNumber, DeLiveryCarrierOther)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_DriverInFormation_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_DriverInFormation_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DriverInFormation_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_DriverInFormation_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DriverInFormation_Incr_temp_view"
    end



  