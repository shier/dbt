
  
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
	[DOCUMENTTYPE] [DocumentType],
	cast([AUCTIONDOCUMENTNO] as nvarchar(4000)) [AuctionDocumentno],
	cast([BUYFROMVENDORNO] as nvarchar(4000)) [BuyFromVendorno],
	cast([PAYTOVENDORNO] as nvarchar(4000)) [PaytoVendorno],
	cast([YOURREFERENCE] as nvarchar(4000)) [YourReference],
	[DOCUMENTDATE] [DocumentDate],
	[POSTINGDATE] [PostingDate],
	[DUEDATE] [DueDate],
	cast([VENDORORDERNO] as nvarchar(4000)) [VendorOrderno],
	cast([VENDORSHIPMENTNO] as nvarchar(4000)) [VendorShipmentno],
	cast([VENDORINVOICENO] as nvarchar(4000)) [VendorInvoiceno],
	cast([VENDORCRMEMONO] as nvarchar(4000)) [Vendorcrmemono],
	cast([VENDORQUOTENO] as nvarchar(4000)) [Vendorquoteno],
	[STATUS] [Status],
	cast([STATUSMESSAGE] as nvarchar(4000)) [StatusMessage],
	[PAYMENTDATE] [PaymentDate],
	[IMPORTED] [Imported],
	cast([JOBNO] as nvarchar(4000)) [Jobno],
	cast([LOTNO] as nvarchar(4000)) [Lotno],
	cast([AUCTIONID] as nvarchar(4000)) [AuctionID],
	cast([GLOBALDIM1CODE] as nvarchar(4000)) [Globaldim1Code],
	cast([GLOBALDIM2CODE] as nvarchar(4000)) [Globaldim2Code],
	cast([BUSINESSUNIT] as nvarchar(4000)) [BusinessUnit],
	[WROTETONAVISION] [WrotetoNavision],
	[EXPECTEDRECEIPTDATE] [ExpectedReceiptDate]
From stg.[Auct_NavisionPurchaseHeader_Raw]
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


