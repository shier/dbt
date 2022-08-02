
  
  if object_id ('"stg"."Auct_TaskItemTypes_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaskItemTypes_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_TaskItemTypes_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_TaskItemTypes_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_TaskItemTypes_Inter__dbt_tmp_temp_view as
    
Select
	[TASKITEMTYPEID] [TaskItemTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[TASKCATEGORYID] [TaskCategoryID],
	cast([CREATEPROCESSOR] as nvarchar(4000)) [CreateProcessor],
	cast([GETPROCESSOR] as nvarchar(4000)) [GetProcessor],
	cast([ACTIONHTML] as nvarchar(4000)) [Actionhtml],
	[ISTOPTASK] [IsTOpTask],
	[DISPLAYORDER] [DisplayOrder]
From stg.[Auct_TaskItemTypes_Raw]
    ');

  CREATE TABLE "stg"."Auct_TaskItemTypes_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_TaskItemTypes_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_TaskItemTypes_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaskItemTypes_Inter__dbt_tmp_temp_view"
    end


