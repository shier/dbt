
  
  if object_id ('"stg"."Auct_City_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_City_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_City_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_City_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_City_Inter__dbt_tmp_temp_view as
    
Select
	[CITYID] [CityID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([COUNTY] as nvarchar(4000)) [County],
	cast([STATE] as nvarchar(4000)) [State],
	cast([STATEABBREVIATION] as nvarchar(4000)) [StateAbbreviation],
	cast([POSTALCODE] as nvarchar(4000)) [PostalCode]
From stg.[Auct_City_Raw]
    ');

  CREATE TABLE "stg"."Auct_City_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_City_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_City_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_City_Inter__dbt_tmp_temp_view"
    end


