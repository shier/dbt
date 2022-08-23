
  
  if object_id ('"dbo"."Auct_Tasks_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Tasks_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Tasks_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Tasks_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Tasks_FromStg__dbt_tmp_temp_view as
    
Select
	cast([TaskID] as int) [TaskID],
	cast([Active] as bit) [Active],
	cast([TaskCategoryID] as int) [TaskCategoryID],
	cast([TaskCategoryLinkID] as int) [TaskCategoryLinkID],
	cast([TaskCategoryLinkGUID] as nvarchar(4000)) [TaskCategoryLinkGUID] 
From stg.[Auct_Tasks_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Tasks_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Tasks_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Tasks_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Tasks_FromStg__dbt_tmp_temp_view"
    end


