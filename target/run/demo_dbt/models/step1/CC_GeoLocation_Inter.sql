
  
  if object_id ('"stg"."CC_GeoLocation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_GeoLocation_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_GeoLocation_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_GeoLocation_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_GeoLocation_Inter__dbt_tmp_temp_view as
    
Select
	[GeoDataSource] [GeoDataSource],
	[CreateDateUTC] [CreateDateUTC],
	[Latitude] [Latitude],
	[Longitude] [Longitude],
	cast([IPAddress] as nvarchar(4000)) [IpAddress],
	cast([CountryCode] as nvarchar(4000)) [CountryCode],
	cast([RegionCode] as nvarchar(4000)) [RegionCode],
	cast([RegionName] as nvarchar(4000)) [RegionName],
	cast([City] as nvarchar(4000)) [City],
	cast([ZipCode] as nvarchar(4000)) [ZipCode]
From stg.[CC_GeoLocation_Raw]
    ');

  CREATE TABLE "stg"."CC_GeoLocation_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_GeoLocation_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_GeoLocation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_GeoLocation_Inter__dbt_tmp_temp_view"
    end


