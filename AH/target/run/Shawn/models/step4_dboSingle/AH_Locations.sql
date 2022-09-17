
  
  if object_id ('"dbo"."AH_Locations__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Locations__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Locations__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Locations__dbt_tmp"
    end


   EXEC('create view dbo.AH_Locations__dbt_tmp_temp_view as
    
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([PayToproceed] as bit) [PayToproceed],
	cast([ID] as int) [ID] 
From stg.[AH_Locations_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Locations__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Locations__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Locations__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Locations__dbt_tmp_temp_view"
    end


