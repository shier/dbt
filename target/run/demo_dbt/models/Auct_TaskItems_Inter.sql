
  
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
	CREATEDBYUSERID CreatedByUserID,
	ASSIGNEDBYUSERID AssignedByUserID,
	TASKITEMID TaskItemID,
	TASKITEMTYPEID TaskItemTypeID,
	TASKID TaskID,
	COMPLETEDBYUSERID CompletedByUserID,
	CREATED Created,
	COMPLETED Completed,
	cast(MESSAGE as nvarchar(4000)) Message,
	cast(NAVIGATEURL as nvarchar(4000)) NavigateURL
From Auct_TaskItems_Raw
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


