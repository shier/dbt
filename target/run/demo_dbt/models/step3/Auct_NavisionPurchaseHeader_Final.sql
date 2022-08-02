
  
  if object_id ('"stg"."Auct_NavisionPurchaseHeader_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionPurchaseHeader_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionPurchaseHeader_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavisionPurchaseHeader_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavisionPurchaseHeader_Final__dbt_tmp_temp_view as
    
Select
	[DocumentType],[AuctionDocumentno],[BuyFromVendorno],[PaytoVendorno],[YourReference],[DocumentDate],[PostingDate],[DueDate],[VendorOrderno],[VendorShipmentno],[VendorInvoiceno],[Vendorcrmemono],[Vendorquoteno],[Status],[StatusMessage],[PaymentDate],[Imported],[Jobno],[Lotno],[AuctionID],[Globaldim1Code],[Globaldim2Code],[BusinessUnit],[WrotetoNavision],[ExpectedReceiptDate] 
From [Auct_NavisionPurchaseHeader_Incr]
    ');

  CREATE TABLE "stg"."Auct_NavisionPurchaseHeader_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionPurchaseHeader_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionPurchaseHeader_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionPurchaseHeader_Final__dbt_tmp_temp_view"
    end


