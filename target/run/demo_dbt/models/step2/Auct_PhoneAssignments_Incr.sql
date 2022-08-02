
      
  
  if object_id ('"stg"."Auct_PhoneAssignments_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PhoneAssignments_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PhoneAssignments_Incr"','U') is not null
    begin
    drop table "stg"."Auct_PhoneAssignments_Incr"
    end


   EXEC('create view stg.Auct_PhoneAssignments_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(IsDefault, Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(CustomerAccountID as varchar), Cast(PhoneID as varchar), Cast(PhoneStatusID as varchar), Cast(PhoneTypeID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PhoneAssignments_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_PhoneAssignments_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PhoneAssignments_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_PhoneAssignments_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PhoneAssignments_Incr_temp_view"
    end



  