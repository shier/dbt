
  
  if object_id ('"dbo"."Auct_TaskItemTypes__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaskItemTypes__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TaskItemTypes__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TaskItemTypes__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TaskItemTypes__dbt_tmp_temp_view as
    
Select
	cast([TaskItemTypeID] as int) [TASKITEMTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([TaskCategoryID] as int) [TASKCATEGORYID],
	cast([CreateProcessor] as nvarchar(4000)) [CREATEPROCESSOR],
	cast([GetProcessor] as nvarchar(4000)) [GETPROCESSOR],
	cast([Actionhtml] as nvarchar(4000)) [ACTIONHTML],
	cast([IsTOpTask] as bit) [ISTOPTASK],
	cast([DisplayOrder] as numeric(18,0)) [DISPLAYORDER] 
From stg.[Auct_TaskItemTypes_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TaskItemTypes__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TaskItemTypes__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TaskItemTypes__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaskItemTypes__dbt_tmp_temp_view"
    end


