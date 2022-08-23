
  
  if object_id ('"dbo"."Auct_CarOptionInclude_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarOptionInclude_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarOptionInclude_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarOptionInclude_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarOptionInclude_FromStg__dbt_tmp_temp_view as
    
Select
	cast([CarOptionIncludeID] as int) [CarOptionIncludeID],
	cast([SourceCarOptionID] as int) [SourceCarOptionID],
	cast([TargetCarOptionID] as int) [TargetCarOptionID],
	cast([Include] as nvarchar(4000)) [Include],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CarOptionInclude_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarOptionInclude_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarOptionInclude_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarOptionInclude_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarOptionInclude_FromStg__dbt_tmp_temp_view"
    end


