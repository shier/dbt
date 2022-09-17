
  
  if object_id ('"dbo"."AH_Userclaims__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Userclaims__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Userclaims__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Userclaims__dbt_tmp"
    end


   EXEC('create view dbo.AH_Userclaims__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([UserID] as int) [UserID],
	cast([ClaimType] as nvarchar(4000)) [ClaimType],
	cast([ClaimValue] as nvarchar(4000)) [ClaimValue] 
From stg.[AH_Userclaims_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Userclaims__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Userclaims__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Userclaims__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Userclaims__dbt_tmp_temp_view"
    end


