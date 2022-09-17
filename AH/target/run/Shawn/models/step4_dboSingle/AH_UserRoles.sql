
  
  if object_id ('"dbo"."AH_UserRoles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UserRoles__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_UserRoles__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_UserRoles__dbt_tmp"
    end


   EXEC('create view dbo.AH_UserRoles__dbt_tmp_temp_view as
    
Select
	cast([RoleID] as int) [RoleID],
	cast([ID] as int) [ID_RWXUserRoles],
	cast([UserID] as int) [UserID] 
From stg.[AH_UserRoles_FinalView]
    ');

  CREATE TABLE "dbo"."AH_UserRoles__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_UserRoles__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_UserRoles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UserRoles__dbt_tmp_temp_view"
    end


