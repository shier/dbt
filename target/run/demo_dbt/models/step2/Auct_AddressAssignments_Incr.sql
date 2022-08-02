
      
  
  if object_id ('"stg"."Auct_AddressAssignments_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AddressAssignments_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AddressAssignments_Incr"','U') is not null
    begin
    drop table "stg"."Auct_AddressAssignments_Incr"
    end


   EXEC('create view stg.Auct_AddressAssignments_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CustomerAccountID as varchar), Cast(AddressStatusID as varchar), Cast(UpdateEventID as varchar), Cast(CompanyID as varchar), Cast(AddressTypeID as varchar), Cast(AddressID as varchar), IsDefault, Adddescr)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AddressAssignments_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_AddressAssignments_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AddressAssignments_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_AddressAssignments_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AddressAssignments_Incr_temp_view"
    end



  