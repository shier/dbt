
      
  
  if object_id ('"stg"."Auct_NavisionSalesHeader_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionSalesHeader_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionSalesHeader_Incr"','U') is not null
    begin
    drop table "stg"."Auct_NavisionSalesHeader_Incr"
    end


   EXEC('create view stg.Auct_NavisionSalesHeader_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([DocumentType] as varchar), [AuctionDocumentno], [SelltoCustomerno], [BilltoCustomerno], [YourReference], Cast([DocumentDate] as varchar), Cast([PostingDate] as varchar), Cast([ShipmentDate] as varchar), Cast([DueDate] as varchar), Cast([Status] as varchar), [StatusMessage], Cast([PaymentDate] as varchar), Cast([Imported] as varchar), [Jobno], [ExternalDocumentno], [Lotno], [AuctionID], [GlobalDimension1Code], [GlobalDimension2Code], [BusinessUnit], Cast([WrotetoNavision] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavisionSalesHeader_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_NavisionSalesHeader_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionSalesHeader_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionSalesHeader_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionSalesHeader_Incr_temp_view"
    end



  