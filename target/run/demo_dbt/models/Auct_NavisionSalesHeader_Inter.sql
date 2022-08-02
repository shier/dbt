
  
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
	cast(EXTERNALDOCUMENTNO as nvarchar(4000)) ExternalDocumentno,
	cast(LOTNO as nvarchar(4000)) Lotno,
	cast(AUCTIONID as nvarchar(4000)) AuctionID,
	cast(GLOBALDIMENSION1CODE as nvarchar(4000)) GlobalDimension1Code,
	cast(GLOBALDIMENSION2CODE as nvarchar(4000)) GlobalDimension2Code,
	cast(BUSINESSUNIT as nvarchar(4000)) BusinessUnit,
	cast(AUCTIONDOCUMENTNO as nvarchar(4000)) AuctionDocumentno,
	cast(SELLTOCUSTOMERNO as nvarchar(4000)) SelltoCustomerno,
	cast(BILLTOCUSTOMERNO as nvarchar(4000)) BilltoCustomerno,
	cast(YOURREFERENCE as nvarchar(4000)) YourReference,
	cast(STATUSMESSAGE as nvarchar(4000)) StatusMessage,
	cast(JOBNO as nvarchar(4000)) Jobno,
	SHIPMENTDATE ShipmentDate,
	DUEDATE DueDate,
	PAYMENTDATE PaymentDate,
	DOCUMENTDATE DocumentDate,
	POSTINGDATE PostingDate,
	DOCUMENTTYPE DocumentType,
	STATUS Status,
	IMPORTED Imported,
	WROTETONAVISION WrotetoNavision
From Auct_NavisionSalesHeader_Raw
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


