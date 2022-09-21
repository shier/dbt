
  
  if object_id ('"dbo"."Auct_TaxRates__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxRates__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TaxRates__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TaxRates__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TaxRates__dbt_tmp_temp_view as
    
Select
	cast([TaxRatesID] as int) [TAXRATESID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Rate] as numeric(18,6)) [RATE] 
From stg.[Auct_TaxRates_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TaxRates__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TaxRates__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TaxRates__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxRates__dbt_tmp_temp_view"
    end


