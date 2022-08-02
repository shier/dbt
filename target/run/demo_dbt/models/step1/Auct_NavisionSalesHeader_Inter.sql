
  
  if object_id ('"stg"."Auct_NavisionSalesHeader_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionSalesHeader_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionSalesHeader_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavisionSalesHeader_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavisionSalesHeader_Inter__dbt_tmp_temp_view as
    
Select
	[DOCUMENTTYPE] [DocumentType],
	cast([AUCTIONDOCUMENTNO] as nvarchar(4000)) [AuctionDocumentno],
	cast([SELLTOCUSTOMERNO] as nvarchar(4000)) [SelltoCustomerno],
	cast([BILLTOCUSTOMERNO] as nvarchar(4000)) [BilltoCustomerno],
	cast([YOURREFERENCE] as nvarchar(4000)) [YourReference],
	[DOCUMENTDATE] [DocumentDate],
	[POSTINGDATE] [PostingDate],
	[SHIPMENTDATE] [ShipmentDate],
	[DUEDATE] [DueDate],
	[STATUS] [Status],
	cast([STATUSMESSAGE] as nvarchar(4000)) [StatusMessage],
	[PAYMENTDATE] [PaymentDate],
	[IMPORTED] [Imported],
	cast([JOBNO] as nvarchar(4000)) [Jobno],
	cast([EXTERNALDOCUMENTNO] as nvarchar(4000)) [ExternalDocumentno],
	cast([LOTNO] as nvarchar(4000)) [Lotno],
	cast([AUCTIONID] as nvarchar(4000)) [AuctionID],
	cast([GLOBALDIMENSION1CODE] as nvarchar(4000)) [GlobalDimension1Code],
	cast([GLOBALDIMENSION2CODE] as nvarchar(4000)) [GlobalDimension2Code],
	cast([BUSINESSUNIT] as nvarchar(4000)) [BusinessUnit],
	[WROTETONAVISION] [WrotetoNavision]
From stg.[Auct_NavisionSalesHeader_Raw]
    ');

  CREATE TABLE "stg"."Auct_NavisionSalesHeader_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionSalesHeader_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionSalesHeader_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionSalesHeader_Inter__dbt_tmp_temp_view"
    end


