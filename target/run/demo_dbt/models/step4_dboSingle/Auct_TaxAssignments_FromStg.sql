
  
  if object_id ('"dbo"."Auct_TaxAssignments_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxAssignments_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TaxAssignments_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TaxAssignments_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TaxAssignments_FromStg__dbt_tmp_temp_view as
    
Select
	cast([TaxAssignmentID] as int) [TaxAssignmentID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([CityTaxRatesID] as int) [CityTaxRatesID],
	cast([CountyTaxRatesID] as int) [CountyTaxRatesID],
	cast([StateTaxRatesID] as int) [StateTaxRatesID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_TaxAssignments_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TaxAssignments_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TaxAssignments_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TaxAssignments_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxAssignments_FromStg__dbt_tmp_temp_view"
    end


