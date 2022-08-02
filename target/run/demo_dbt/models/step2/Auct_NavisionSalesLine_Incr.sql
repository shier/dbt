
      
  
  if object_id ('"stg"."Auct_NavisionSalesLine_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionSalesLine_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionSalesLine_Incr"','U') is not null
    begin
    drop table "stg"."Auct_NavisionSalesLine_Incr"
    end


   EXEC('create view stg.Auct_NavisionSalesLine_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([DocumentType] as varchar), [AuctionDocumentno], Cast([Lineno] as varchar), Cast([Type] as varchar), [No], [Description], [Description2], Cast([Status] as varchar), [StatusMessage], [GlobalDimension1Code], [GlobalDimension2Code], [ShortCutDimension4Code], [ShortCutDimension8Code], [ShortCutDimension3Code], [BusinessUnit], Cast([WrotetoNavision] as varchar), [ShortCutDimension5Code], Cast([Quantity] as varchar), Cast([UnitPriceexclTax] as varchar), Cast([Unitcost] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavisionSalesLine_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_NavisionSalesLine_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionSalesLine_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionSalesLine_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionSalesLine_Incr_temp_view"
    end



  