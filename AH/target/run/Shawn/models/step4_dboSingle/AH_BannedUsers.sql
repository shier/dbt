
  
  if object_id ('"dbo"."AH_BannedUsers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_BannedUsers__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_BannedUsers__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_BannedUsers__dbt_tmp"
    end


   EXEC('create view dbo.AH_BannedUsers__dbt_tmp_temp_view as
    
Select
	cast([Lastip] as nvarchar(4000)) [Lastip],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([FName] as nvarchar(4000)) [FName],
	cast([LName] as nvarchar(4000)) [LName],
	cast([IsLockedOut] as bit) [IsLockedOut],
	cast([ID] as int) [ID],
	cast([UserID] as int) [UserID] 
From stg.[AH_BannedUsers_FinalView]
    ');

  CREATE TABLE "dbo"."AH_BannedUsers__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_BannedUsers__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_BannedUsers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_BannedUsers__dbt_tmp_temp_view"
    end


