
  
  if object_id ('"dbo"."AH_UserAlerts__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UserAlerts__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_UserAlerts__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_UserAlerts__dbt_tmp"
    end


   EXEC('create view dbo.AH_UserAlerts__dbt_tmp_temp_view as
    
Select
	cast([Enabled] as bit) [Enabled],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([MakeID] as int) [MakeId],
	cast([ModelID] as int) [ModelId],
	cast([YearFrom] as int) [YearFrom],
	cast([Yearto] as int) [YearTo],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_UserAlerts_FinalView]
    ');

  CREATE TABLE "dbo"."AH_UserAlerts__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_UserAlerts__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_UserAlerts__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UserAlerts__dbt_tmp_temp_view"
    end


