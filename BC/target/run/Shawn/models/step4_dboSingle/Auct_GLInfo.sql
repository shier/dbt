
  
  if object_id ('"dbo"."Auct_GLInfo__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_GLInfo__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_GLInfo__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_GLInfo__dbt_tmp"
    end


   EXEC('create view dbo.Auct_GLInfo__dbt_tmp_temp_view as
    
Select
	cast([GLInfoID] as int) [GLINFOID],
	cast([AccountID] as int) [ACCOUNTID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Task_ItemType] as int) [TASK_ITEMTYPE],
	cast([Created] as datetime) [CREATED],
	cast([GlCategoryID] as int) [GLCATEGORYID],
	cast([FeeTypeID] as int) [FEETYPEID],
	cast([Dept] as int) [DEPT],
	cast([Tasks] as nvarchar(4000)) [TASKS],
	cast([Category] as nvarchar(4000)) [CATEGORY],
	cast([Deptxx] as nvarchar(4000)) [DEPTXX] 
From stg.[Auct_GLInfo_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_GLInfo__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_GLInfo__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_GLInfo__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_GLInfo__dbt_tmp_temp_view"
    end


