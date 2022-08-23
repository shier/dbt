
  
  if object_id ('"dbo"."Auct_GLInfo_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_GLInfo_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_GLInfo_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_GLInfo_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_GLInfo_FromStg__dbt_tmp_temp_view as
    
Select
	cast([GLInfoID] as int) [GLInfoID],
	cast([AccountID] as int) [AccountID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Task_ItemType] as int) [Task_ItemType],
	cast([Created] as datetime) [Created],
	cast([GlCategoryID] as int) [GlCategoryID],
	cast([FeeTypeID] as int) [FeeTypeID],
	cast([Dept] as int) [Dept],
	cast([Tasks] as nvarchar(4000)) [Tasks],
	cast([Category] as nvarchar(4000)) [Category],
	cast([Deptxx] as nvarchar(4000)) [Deptxx] 
From stg.[Auct_GLInfo_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_GLInfo_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_GLInfo_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_GLInfo_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_GLInfo_FromStg__dbt_tmp_temp_view"
    end


