
  
  if object_id ('"dbo"."Auct_Invoice__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Invoice__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Invoice__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Invoice__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Invoice__dbt_tmp_temp_view as
    
Select
	cast([InvoiceID] as int) [INVOICEID],
	cast([InvoiceName] as nvarchar(512)) [INVOICENAME],
	cast([AuctionID] as int) [AUCTIONID],
	cast([ContactID] as int) [CONTACTID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Invoice_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Invoice__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Invoice__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Invoice__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Invoice__dbt_tmp_temp_view"
    end


