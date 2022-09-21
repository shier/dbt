
  
  if object_id ('"dbo"."Auct_NavisionSalesHeader__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionSalesHeader__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NavisionSalesHeader__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NavisionSalesHeader__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NavisionSalesHeader__dbt_tmp_temp_view as
    
Select
	cast([DocumentType] as int) [DOCUMENTTYPE],
	cast([AuctionDocumentno] as nvarchar(4000)) [AUCTIONDOCUMENTNO],
	cast([SelltoCustomerno] as nvarchar(4000)) [SELLTOCUSTOMERNO],
	cast([BilltoCustomerno] as nvarchar(4000)) [BILLTOCUSTOMERNO],
	cast([YourReference] as nvarchar(4000)) [YOURREFERENCE],
	cast([DocumentDate] as datetime) [DOCUMENTDATE],
	cast([PostingDate] as datetime) [POSTINGDATE],
	cast([ShipmentDate] as datetime) [SHIPMENTDATE],
	cast([DueDate] as datetime) [DUEDATE],
	cast([Status] as int) [STATUS],
	cast([StatusMessage] as nvarchar(4000)) [STATUSMESSAGE],
	cast([PaymentDate] as datetime) [PAYMENTDATE],
	cast([Imported] as int) [IMPORTED],
	cast([Jobno] as nvarchar(4000)) [JOBNO],
	cast([ExternalDocumentno] as nvarchar(4000)) [EXTERNALDOCUMENTNO],
	cast([Lotno] as nvarchar(4000)) [LOTNO],
	cast([AuctionID] as nvarchar(4000)) [AUCTIONID],
	cast([GlobalDimension1Code] as nvarchar(4000)) [GLOBALDIMENSION1CODE],
	cast([GlobalDimension2Code] as nvarchar(4000)) [GLOBALDIMENSION2CODE],
	cast([BusinessUnit] as nvarchar(4000)) [BUSINESSUNIT],
	cast([WrotetoNavision] as int) [WROTETONAVISION] 
From stg.[Auct_NavisionSalesHeader_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NavisionSalesHeader__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NavisionSalesHeader__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NavisionSalesHeader__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionSalesHeader__dbt_tmp_temp_view"
    end


