
      
  
  if object_id ('"stg"."Auct_ChargeDeleted_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargeDeleted_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ChargeDeleted_Incr"','U') is not null
    begin
    drop table "stg"."Auct_ChargeDeleted_Incr"
    end


   EXEC('create view stg.Auct_ChargeDeleted_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([ChargeID] as varchar), Cast([FeeTypeID] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), Cast([InvoiceID] as varchar), [Comments], [IsTaxable], Cast([ConsignmentID] as varchar), Cast([BidderID] as varchar), Cast([DealerID] as varchar), Cast([VendorID] as varchar), Cast([MediaID] as varchar), Cast([SponsorID] as varchar), Cast([UserID] as varchar), Cast([Amount] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ChargeDeleted_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_ChargeDeleted_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ChargeDeleted_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_ChargeDeleted_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargeDeleted_Incr_temp_view"
    end



  