
  
  if object_id ('"dbo"."Auct_TaskItems_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaskItems_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TaskItems_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TaskItems_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TaskItems_FromStg__dbt_tmp_temp_view as
    
Select
	cast([TaskItemID] as int) [TaskItemID],
	cast([TaskItemTypeID] as int) [TaskItemTypeID],
	cast([TaskID] as int) [TaskID],
	cast([Created] as datetime) [Created],
	cast([CompletedByUserID] as int) [CompletedByUserID],
	cast([Completed] as datetime) [Completed],
	cast([Message] as nvarchar(4000)) [Message],
	cast([CreatedByUserID] as int) [CreatedByUserID],
	cast([AssignedByUserID] as int) [AssignedByUserID],
	cast([NavigateURL] as nvarchar(4000)) [NavigateURL] 
From stg.[Auct_TaskItems_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TaskItems_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TaskItems_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TaskItems_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaskItems_FromStg__dbt_tmp_temp_view"
    end


