
  
  if object_id ('"dbo"."Auct_TaskItems__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaskItems__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_TaskItems__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_TaskItems__dbt_tmp"
    end


   EXEC('create view dbo.Auct_TaskItems__dbt_tmp_temp_view as
    
Select
	cast([TaskItemID] as int) [TASKITEMID],
	cast([TaskItemTypeID] as int) [TASKITEMTYPEID],
	cast([TaskID] as int) [TASKID],
	cast([Created] as datetime) [CREATED],
	cast([CompletedByUserID] as int) [COMPLETEDBYUSERID],
	cast([Completed] as datetime) [COMPLETED],
	cast([Message] as nvarchar(4000)) [MESSAGE],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([AssignedByUserID] as int) [ASSIGNEDBYUSERID],
	cast([NavigateURL] as nvarchar(4000)) [NAVIGATEURL] 
From stg.[Auct_TaskItems_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_TaskItems__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_TaskItems__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_TaskItems__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_TaskItems__dbt_tmp_temp_view"
    end


