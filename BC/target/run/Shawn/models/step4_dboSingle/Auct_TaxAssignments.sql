
  
  if object_id ('"dbo"."Auct_TaxAssignments__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxAssignments__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TaxAssignments__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TaxAssignments__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TaxAssignments__dbt_tmp_temp_view as
    
Select
	cast([TaxAssignmentID] as int) [TAXASSIGNMENTID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([CityTaxRatesID] as int) [CITYTAXRATESID],
	cast([CountyTaxRatesID] as int) [COUNTYTAXRATESID],
	cast([StateTaxRatesID] as int) [STATETAXRATESID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_TaxAssignments_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TaxAssignments__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TaxAssignments__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TaxAssignments__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxAssignments__dbt_tmp_temp_view"
    end


