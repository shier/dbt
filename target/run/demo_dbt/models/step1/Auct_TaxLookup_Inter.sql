
  
  if object_id ('"stg"."Auct_TaxLookup_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaxLookup_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_TaxLookup_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_TaxLookup_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_TaxLookup_Inter__dbt_tmp_temp_view as
    
Select
	[LOOKUPID] [LookupID],
	[TAXRATESID] [TaxRatesID],
	cast([CITY] as nvarchar(4000)) [City],
	cast([STATEPROVINCE] as nvarchar(4000)) [StateProvince],
	cast([COUNTY] as nvarchar(4000)) [County],
	[TAXTYPE] [TaxType],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[TAXLEVELID] [TaxLevelID],
	[ITEMTAXTYPEID] [ItemTaxTypeID]
From stg.[Auct_TaxLookup_Raw]
    ');

  CREATE TABLE "stg"."Auct_TaxLookup_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_TaxLookup_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_TaxLookup_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaxLookup_Inter__dbt_tmp_temp_view"
    end


