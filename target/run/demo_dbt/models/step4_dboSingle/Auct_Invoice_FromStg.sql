
  
  if object_id ('"dbo"."Auct_Invoice_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Invoice_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Invoice_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Invoice_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Invoice_FromStg__dbt_tmp_temp_view as
    
Select
	cast([InvoiceID] as int) [InvoiceID],
	cast([InvoiceName] as nvarchar(512)) [InvoiceName],
	cast([AuctionID] as int) [AuctionID],
	cast([ContactID] as int) [ContactID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Invoice_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Invoice_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Invoice_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Invoice_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Invoice_FromStg__dbt_tmp_temp_view"
    end


