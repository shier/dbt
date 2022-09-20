
  
  if object_id ('"dbo"."AH_Roles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Roles__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Roles__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Roles__dbt_tmp"
    end


   EXEC('create view dbo.AH_Roles__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [Id],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([Name] as nvarchar(500)) [Name] 
From stg.[AH_Roles_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Roles__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Roles__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Roles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Roles__dbt_tmp_temp_view"
    end


