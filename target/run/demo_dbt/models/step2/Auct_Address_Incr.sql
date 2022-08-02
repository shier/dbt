
      
  
  if object_id ('"stg"."Auct_Address_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Address_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Address_Incr"
    end


   EXEC('create view stg.Auct_Address_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Address1, Address2, City, StateProvince, PostalCode, Careof, Active, County, WeBaddressID, Cast(Created as varchar), Cast(Country as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Address_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Address_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Address_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Address_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Incr_temp_view"
    end



  