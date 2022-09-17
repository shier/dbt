
  
  if object_id ('"dbo"."Auct_NavisionPurchaseHeader__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionPurchaseHeader__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NavisionPurchaseHeader__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NavisionPurchaseHeader__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NavisionPurchaseHeader__dbt_tmp_temp_view as
    
Select
	cast([DocumentType] as int) [DOCUMENTTYPE],
	cast([AuctionDocumentno] as nvarchar(4000)) [AUCTIONDOCUMENTNO],
	cast([BuyFromVendorno] as nvarchar(4000)) [BUYFROMVENDORNO],
	cast([PaytoVendorno] as nvarchar(4000)) [PAYTOVENDORNO],
	cast([YourReference] as nvarchar(4000)) [YOURREFERENCE],
	cast([DocumentDate] as datetime) [DOCUMENTDATE],
	cast([PostingDate] as datetime) [POSTINGDATE],
	cast([DueDate] as datetime) [DUEDATE],
	cast([VendorOrderno] as nvarchar(4000)) [VENDORORDERNO],
	cast([VendorShipmentno] as nvarchar(4000)) [VENDORSHIPMENTNO],
	cast([VendorInvoiceno] as nvarchar(4000)) [VENDORINVOICENO],
	cast([Vendorcrmemono] as nvarchar(4000)) [VENDORCRMEMONO],
	cast([Vendorquoteno] as nvarchar(4000)) [VENDORQUOTENO],
	cast([Status] as int) [STATUS],
	cast([StatusMessage] as nvarchar(4000)) [STATUSMESSAGE],
	cast([PaymentDate] as datetime) [PAYMENTDATE],
	cast([Imported] as int) [IMPORTED],
	cast([Jobno] as nvarchar(4000)) [JOBNO],
	cast([Lotno] as nvarchar(4000)) [LOTNO],
	cast([AuctionID] as nvarchar(4000)) [AUCTIONID],
	cast([Globaldim1Code] as nvarchar(4000)) [GLOBALDIM1CODE],
	cast([Globaldim2Code] as nvarchar(4000)) [GLOBALDIM2CODE],
	cast([BusinessUnit] as nvarchar(4000)) [BUSINESSUNIT],
	cast([WrotetoNavision] as int) [WROTETONAVISION],
	cast([ExpectedReceiptDate] as date) [EXPECTEDRECEIPTDATE] 
From stg.[Auct_NavisionPurchaseHeader_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NavisionPurchaseHeader__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NavisionPurchaseHeader__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NavisionPurchaseHeader__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionPurchaseHeader__dbt_tmp_temp_view"
    end


