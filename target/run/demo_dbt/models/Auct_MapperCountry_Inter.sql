
  
  if object_id ('"stg"."Auct_MapperCountry_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MapperCountry_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MapperCountry_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MapperCountry_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MapperCountry_Inter__dbt_tmp_temp_view as
    
Select
	MAPTOID MaptoID,
	cast(NAME as nvarchar(4000)) Name
From Auct_MapperCountry_Raw
    ');

  CREATE TABLE "stg"."Auct_MapperCountry_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MapperCountry_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MapperCountry_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MapperCountry_Inter__dbt_tmp_temp_view"
    end


