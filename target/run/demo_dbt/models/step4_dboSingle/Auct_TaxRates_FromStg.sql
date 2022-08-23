
  
  if object_id ('"dbo"."Auct_TaxRates_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxRates_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TaxRates_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TaxRates_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TaxRates_FromStg__dbt_tmp_temp_view as
    
Select
	cast([TaxRatesID] as int) [TaxRatesID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([AuctionID] as int) [AuctionID],
	cast([Rate] as numeric(18,6)) [Rate] 
From stg.[Auct_TaxRates_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TaxRates_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TaxRates_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TaxRates_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxRates_FromStg__dbt_tmp_temp_view"
    end


