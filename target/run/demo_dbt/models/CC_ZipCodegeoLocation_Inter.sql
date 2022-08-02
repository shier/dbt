
  
  if object_id ('"stg"."CC_ZipCodegeoLocation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ZipCodegeoLocation_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ZipCodegeoLocation_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ZipCodegeoLocation_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ZipCodegeoLocation_Inter__dbt_tmp_temp_view as
    
Select
	Id ID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Latitude Latitude,
	Longitude Longitude,
	IsActive IsActive,
	cast(ZipCode as nvarchar(4000)) ZipCode
From CC_ZipCodegeoLocation_Raw
    ');

  CREATE TABLE "stg"."CC_ZipCodegeoLocation_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ZipCodegeoLocation_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ZipCodegeoLocation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ZipCodegeoLocation_Inter__dbt_tmp_temp_view"
    end


