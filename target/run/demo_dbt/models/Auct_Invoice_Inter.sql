
  
  if object_id ('"stg"."Auct_Invoice_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Invoice_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Invoice_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Invoice_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Invoice_Inter__dbt_tmp_temp_view as
    
Select
	cast(INVOICENAME as nvarchar(4000)) InvoiceName,
	CREATED Created,
	INVOICEID InvoiceID,
	AUCTIONID AuctionID,
	CONTACTID ContactID,
	UPDATEEVENTID UpdateEventID
From Auct_Invoice_Raw
    ');

  CREATE TABLE "stg"."Auct_Invoice_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Invoice_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Invoice_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Invoice_Inter__dbt_tmp_temp_view"
    end


