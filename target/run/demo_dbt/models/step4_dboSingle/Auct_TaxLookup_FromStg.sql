
  
  if object_id ('"dbo"."Auct_TaxLookup_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxLookup_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TaxLookup_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TaxLookup_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TaxLookup_FromStg__dbt_tmp_temp_view as
    
Select
	cast([LookupID] as int) [LookupID],
	cast([TaxRatesID] as int) [TaxRatesID],
	cast([City] as nvarchar(4000)) [City],
	cast([StateProvince] as nvarchar(4000)) [StateProvince],
	cast([County] as nvarchar(4000)) [County],
	cast([TaxType] as int) [TaxType],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([TaxLevelID] as int) [TaxLevelID],
	cast([ItemTaxTypeID] as int) [ItemTaxTypeID] 
From stg.[Auct_TaxLookup_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TaxLookup_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TaxLookup_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TaxLookup_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaxLookup_FromStg__dbt_tmp_temp_view"
    end


