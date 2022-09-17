
  
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
	cast([ID] as int) [RoleID],
	cast([CreatedOn] as datetime) [Created_RWXRoles],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXRoles],
	cast([DeletedOn] as datetime) [DeletedDate_RWXRoles],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser_RWXRoles],
	cast([Name] as nvarchar(500)) [Role] 
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


