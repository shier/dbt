
      
  
  if object_id ('"stg"."Auct_ContactRequest_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ContactRequest_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ContactRequest_Incr"','U') is not null
    begin
    drop table "stg"."Auct_ContactRequest_Incr"
    end


   EXEC('create view stg.Auct_ContactRequest_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(DateFulfilled as varchar), Cast(AppointmentTimeStamp as varchar), Cast(Created as varchar), Cast(AddressID as varchar), Cast(UpdateEventID as varchar), Cast(FromContactID as varchar), Cast(RequestTypeID as varchar), Cast(AssignedContactID as varchar), Cast(CompanyID as varchar), Cast(PhoneID as varchar), EmailAddress, RequestFulfilled, SuBJect, CustomerComments, RequestNotes)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ContactRequest_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_ContactRequest_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ContactRequest_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_ContactRequest_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ContactRequest_Incr_temp_view"
    end



  