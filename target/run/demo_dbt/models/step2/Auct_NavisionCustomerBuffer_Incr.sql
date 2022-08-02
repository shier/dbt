
      
  
  if object_id ('"stg"."Auct_NavisionCustomerBuffer_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionCustomerBuffer_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionCustomerBuffer_Incr"','U') is not null
    begin
    drop table "stg"."Auct_NavisionCustomerBuffer_Incr"
    end


   EXEC('create view stg.Auct_NavisionCustomerBuffer_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([No], [Name], [Name2], [Address], [Address2], [City], [State], [CountryCode], [PostCode], [Phoneno], [Email], [HomePage], Cast([Status] as varchar), [StatusMessage], Cast([WrotetoNavision] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavisionCustomerBuffer_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_NavisionCustomerBuffer_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionCustomerBuffer_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionCustomerBuffer_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionCustomerBuffer_Incr_temp_view"
    end



  