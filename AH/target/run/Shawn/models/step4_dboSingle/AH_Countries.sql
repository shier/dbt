
  
  if object_id ('"dbo"."AH_Countries__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Countries__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Countries__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Countries__dbt_tmp"
    end


   EXEC('create view dbo.AH_Countries__dbt_tmp_temp_view as
    
Select
	cast([Name] as nvarchar(500)) [Country],
	cast([Code] as char(5)) [Code],
	cast([CreatedOn] as datetime) [Created_RWXCountries],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXCountries],
	cast([DeletedOn] as datetime) [DeletedDate_RWXCountries],
	cast([ID] as int) [CountryID],
	cast([Enabled] as bit) [IsEnabled],
	cast([StateRequired] as bit) [IsStateRequired] 
From stg.[AH_Countries_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Countries__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Countries__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Countries__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Countries__dbt_tmp_temp_view"
    end


