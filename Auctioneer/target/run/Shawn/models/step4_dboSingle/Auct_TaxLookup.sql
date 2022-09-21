
  
  if object_id ('"dbo"."Auct_TaxLookup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxLookup__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TaxLookup__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TaxLookup__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TaxLookup__dbt_tmp_temp_view as
    
Select
	cast([LookupID] as int) [LOOKUPID],
	cast([TaxRatesID] as int) [TAXRATESID],
	cast([City] as nvarchar(4000)) [CITY],
	cast([StateProvince] as nvarchar(4000)) [STATEPROVINCE],
	cast([County] as nvarchar(4000)) [COUNTY],
	cast([TaxType] as int) [TAXTYPE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([TaxLevelID] as int) [TAXLEVELID],
	cast([ItemTaxTypeID] as int) [ITEMTAXTYPEID] 
From stg.[Auct_TaxLookup_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TaxLookup__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TaxLookup__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TaxLookup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxLookup__dbt_tmp_temp_view"
    end


