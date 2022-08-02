
      
  
  if object_id ('"stg"."Auct_TaxProcessor_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaxProcessor_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_TaxProcessor_Incr"','U') is not null
    begin
    drop table "stg"."Auct_TaxProcessor_Incr"
    end


   EXEC('create view stg.Auct_TaxProcessor_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([NexusState], [PurchaseState], [ClassName], Cast([ItemTaxTypeID] as varchar), [TaxruleDescription], Cast([AuctionTypeBit] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TaxProcessor_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_TaxProcessor_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_TaxProcessor_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_TaxProcessor_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaxProcessor_Incr_temp_view"
    end



  