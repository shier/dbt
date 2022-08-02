
  
  if object_id ('"stg"."Auct_StateProvince_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_StateProvince_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_StateProvince_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_StateProvince_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_StateProvince_Inter__dbt_tmp_temp_view as
    
Select
	cast([ABBREVIATION] as nvarchar(4000)) [Abbreviation],
	cast([FULLNAME] as nvarchar(4000)) [FullName],
	[COUNTRYID] [CountryID],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_StateProvince_Raw]
    ');

  CREATE TABLE "stg"."Auct_StateProvince_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_StateProvince_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_StateProvince_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_StateProvince_Inter__dbt_tmp_temp_view"
    end


