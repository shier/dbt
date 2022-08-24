
  
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
	cast([TaskItemTypeID] as int) [TaskItemTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([TaskCategoryID] as int) [TaskCategoryID],
	cast([CreateProcessor] as nvarchar(4000)) [CreateProcessor],
	cast([GetProcessor] as nvarchar(4000)) [GetProcessor],
	cast([Actionhtml] as nvarchar(4000)) [Actionhtml],
	cast([IsTOpTask] as bit) [IsTopTask],
	cast([DisplayOrder] as numeric(18,0)) [DisplayOrder] 
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


