
  
  if object_id ('"dbo"."CC_GeoLocation__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_GeoLocation__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_GeoLocation__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_GeoLocation__dbt_tmp"
    end


   EXEC('create view dbo.CC_GeoLocation__dbt_tmp_temp_view as
    
Select
	cast([GeoDataSource] as int) [GeoDataSource],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([Latitude] as float) [Latitude],
	cast([Longitude] as float) [Longitude],
	cast([IpAddress] as nvarchar(4000)) [IPAddress],
	cast([CountryCode] as nvarchar(4000)) [CountryCode],
	cast([RegionCode] as nvarchar(4000)) [RegionCode],
	cast([RegionName] as nvarchar(4000)) [RegionName],
	cast([City] as nvarchar(4000)) [City],
	cast([ZipCode] as nvarchar(4000)) [ZipCode] 
From stg.[CC_GeoLocation_FinalView]
    ');

  CREATE TABLE "dbo"."CC_GeoLocation__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_GeoLocation__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_GeoLocation__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_GeoLocation__dbt_tmp_temp_view"
    end


