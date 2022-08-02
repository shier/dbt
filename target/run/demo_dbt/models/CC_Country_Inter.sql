
  
  if object_id ('"stg"."CC_Country_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Country_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Country_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Country_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_Country_Inter__dbt_tmp_temp_view as
    
Select
	IsActive IsActive,
	DisplayOrder DisplayOrder,
	Id ID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	cast(CountryNameSlug as nvarchar(4000)) CountryNameslug,
	cast(CountryCode as nvarchar(4000)) CountryCode,
	cast(Name as nvarchar(4000)) Name,
	cast(CurrencyCode as nvarchar(4000)) CurrencyCode,
	cast(CurrencyNumCode as nvarchar(4000)) CurrencynumCode
From CC_Country_Raw
    ');

  CREATE TABLE "stg"."CC_Country_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Country_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Country_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Country_Inter__dbt_tmp_temp_view"
    end


