
  
  if object_id ('"dbo"."AH_UserLogins__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UserLogins__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_UserLogins__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_UserLogins__dbt_tmp"
    end


   EXEC('create view dbo.AH_UserLogins__dbt_tmp_temp_view as
    
Select
	cast([LoginprovIDEr] as nvarchar(4000)) [LoginprovIDEr],
	cast([ProvIDErKey] as nvarchar(4000)) [ProvIDErKey],
	cast([UserID] as int) [UserID] 
From stg.[AH_UserLogins_FinalView]
    ');

  CREATE TABLE "dbo"."AH_UserLogins__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_UserLogins__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_UserLogins__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UserLogins__dbt_tmp_temp_view"
    end


