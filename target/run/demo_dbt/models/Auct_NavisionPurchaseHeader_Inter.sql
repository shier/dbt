
  
  if object_id ('"stg"."Auct_NavisionPurchaseHeader_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionPurchaseHeader_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionPurchaseHeader_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavisionPurchaseHeader_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavisionPurchaseHeader_Inter__dbt_tmp_temp_view as
    
Select
	DOCUMENTTYPE DocumentType,
	STATUS Status,
	IMPORTED Imported,
	WROTETONAVISION WrotetoNavision,
	EXPECTEDRECEIPTDATE ExpectedReceiptDate,
	PAYMENTDATE PaymentDate,
	DOCUMENTDATE DocumentDate,
	POSTINGDATE PostingDate,
	DUEDATE DueDate,
	cast(AUCTIONID as nvarchar(4000)) AuctionID,
	cast(GLOBALDIM1CODE as nvarchar(4000)) Globaldim1Code,
	cast(GLOBALDIM2CODE as nvarchar(4000)) Globaldim2Code,
	cast(BUSINESSUNIT as nvarchar(4000)) BusinessUnit,
	cast(VENDORINVOICENO as nvarchar(4000)) VendorInvoiceno,
	cast(VENDORCRMEMONO as nvarchar(4000)) Vendorcrmemono,
	cast(VENDORQUOTENO as nvarchar(4000)) Vendorquoteno,
	cast(STATUSMESSAGE as nvarchar(4000)) StatusMessage,
	cast(JOBNO as nvarchar(4000)) Jobno,
	cast(LOTNO as nvarchar(4000)) Lotno,
	cast(AUCTIONDOCUMENTNO as nvarchar(4000)) AuctionDocumentno,
	cast(BUYFROMVENDORNO as nvarchar(4000)) BuyFromVendorno,
	cast(PAYTOVENDORNO as nvarchar(4000)) PaytoVendorno,
	cast(YOURREFERENCE as nvarchar(4000)) YourReference,
	cast(VENDORORDERNO as nvarchar(4000)) VendorOrderno,
	cast(VENDORSHIPMENTNO as nvarchar(4000)) VendorShipmentno
From Auct_NavisionPurchaseHeader_Raw
    ');

  CREATE TABLE "stg"."Auct_NavisionPurchaseHeader_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionPurchaseHeader_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionPurchaseHeader_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionPurchaseHeader_Inter__dbt_tmp_temp_view"
    end


