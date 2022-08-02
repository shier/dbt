
  
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
	[DocumentType],[Status],[Imported],[WrotetoNavision],[ExpectedReceiptDate],[PaymentDate],[DocumentDate],[PostingDate],[DueDate],[AuctionID],[Globaldim1Code],[Globaldim2Code],[BusinessUnit],[VendorInvoiceno],[Vendorcrmemono],[Vendorquoteno],[StatusMessage],[Jobno],[Lotno],[AuctionDocumentno],[BuyFromVendorno],[PaytoVendorno],[YourReference],[VendorOrderno],[VendorShipmentno] 
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


