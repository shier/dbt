
  
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
	cast(ACTIONHTML as nvarchar(4000)) Actionhtml,
	cast(NAME as nvarchar(4000)) Name,
	cast(CREATEPROCESSOR as nvarchar(4000)) CreateProcessor,
	cast(GETPROCESSOR as nvarchar(4000)) GetProcessor,
	TASKITEMTYPEID TaskItemTypeID,
	TASKCATEGORYID TaskCategoryID,
	ISTOPTASK IsTOpTask,
	DISPLAYORDER DisplayOrder
From Auct_TaskItemTypes_Raw
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


