
      
  
  if object_id ('"stg"."Auct_NavisionPurchaseHeader_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionPurchaseHeader_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionPurchaseHeader_Incr"','U') is not null
    begin
    drop table "stg"."Auct_NavisionPurchaseHeader_Incr"
    end


   EXEC('create view stg.Auct_NavisionPurchaseHeader_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([DocumentType] as varchar), [AuctionDocumentno], [BuyFromVendorno], [PaytoVendorno], [YourReference], Cast([DocumentDate] as varchar), Cast([PostingDate] as varchar), Cast([DueDate] as varchar), [VendorOrderno], [VendorShipmentno], [VendorInvoiceno], [Vendorcrmemono], [Vendorquoteno], Cast([Status] as varchar), [StatusMessage], Cast([PaymentDate] as varchar), Cast([Imported] as varchar), [Jobno], [Lotno], [AuctionID], [Globaldim1Code], [Globaldim2Code], [BusinessUnit], Cast([WrotetoNavision] as varchar), Cast([ExpectedReceiptDate] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavisionPurchaseHeader_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_NavisionPurchaseHeader_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionPurchaseHeader_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionPurchaseHeader_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionPurchaseHeader_Incr_temp_view"
    end



  