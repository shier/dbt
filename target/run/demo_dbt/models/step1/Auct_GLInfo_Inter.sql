
  
  if object_id ('"stg"."Auct_GLInfo_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_GLInfo_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_GLInfo_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_GLInfo_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_GLInfo_Inter__dbt_tmp_temp_view as
    
Select
	[GLINFOID] [GLInfoID],
	[ACCOUNTID] [AccountID],
	cast([NAME] as nvarchar(4000)) [Name],
	[TASK_ITEMTYPE] [Task_ItemType],
	[CREATED] [Created],
	[GLCATEGORYID] [GlCategoryID],
	[FEETYPEID] [FeeTypeID],
	[DEPT] [Dept],
	cast([TASKS] as nvarchar(4000)) [Tasks],
	cast([CATEGORY] as nvarchar(4000)) [Category],
	cast([DEPTXX] as nvarchar(4000)) [Deptxx]
From stg.[Auct_GLInfo_Raw]
    ');

  CREATE TABLE "stg"."Auct_GLInfo_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_GLInfo_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_GLInfo_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_GLInfo_Inter__dbt_tmp_temp_view"
    end


