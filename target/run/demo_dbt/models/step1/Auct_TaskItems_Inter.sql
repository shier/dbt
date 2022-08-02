
  
  if object_id ('"stg"."Auct_TaskItems_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaskItems_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_TaskItems_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_TaskItems_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_TaskItems_Inter__dbt_tmp_temp_view as
    
Select
	[TASKITEMID] [TaskItemID],
	[TASKITEMTYPEID] [TaskItemTypeID],
	[TASKID] [TaskID],
	[CREATED] [Created],
	[COMPLETEDBYUSERID] [CompletedByUserID],
	[COMPLETED] [Completed],
	cast([MESSAGE] as nvarchar(4000)) [Message],
	[CREATEDBYUSERID] [CreatedByUserID],
	[ASSIGNEDBYUSERID] [AssignedByUserID],
	cast([NAVIGATEURL] as nvarchar(4000)) [NavigateURL]
From stg.[Auct_TaskItems_Raw]
    ');

  CREATE TABLE "stg"."Auct_TaskItems_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_TaskItems_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_TaskItems_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaskItems_Inter__dbt_tmp_temp_view"
    end


