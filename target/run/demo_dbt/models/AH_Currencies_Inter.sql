
  
  if object_id ('"stg"."AH_Currencies_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Currencies_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Currencies_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Currencies_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Currencies_Inter__dbt_tmp_temp_view as
    
Select
	cast(Code as nvarchar(4000)) Code,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	ConversionToUSD ConVersiontousd,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Id ID
From AH_Currencies_Raw
    ');

  CREATE TABLE "stg"."AH_Currencies_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Currencies_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Currencies_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Currencies_Inter__dbt_tmp_temp_view"
    end


