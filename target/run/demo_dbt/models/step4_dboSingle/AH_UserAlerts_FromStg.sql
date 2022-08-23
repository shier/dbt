
  
  if object_id ('"dbo"."AH_UserAlerts_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UserAlerts_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_UserAlerts_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_UserAlerts_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_UserAlerts_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([Enabled] as bit) [Enabled],
	cast([UserID] as int) [UserID],
	cast([MakeID] as int) [MakeID],
	cast([ModelID] as int) [ModelID],
	cast([YearFrom] as int) [YearFrom],
	cast([Yearto] as int) [Yearto],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_UserAlerts_FinalView]
    ');

  CREATE TABLE "dbo"."AH_UserAlerts_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_UserAlerts_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_UserAlerts_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_UserAlerts_FromStg__dbt_tmp_temp_view"
    end


