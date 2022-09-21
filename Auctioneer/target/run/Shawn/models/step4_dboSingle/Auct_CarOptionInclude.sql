
  
  if object_id ('"dbo"."Auct_CarOptionInclude__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarOptionInclude__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarOptionInclude__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarOptionInclude__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarOptionInclude__dbt_tmp_temp_view as
    
Select
	cast([CarOptionIncludeID] as int) [CAROPTIONINCLUDEID],
	cast([SourceCarOptionID] as int) [SOURCECAROPTIONID],
	cast([TargetCarOptionID] as int) [TARGETCAROPTIONID],
	cast([Include] as nvarchar(4000)) [INCLUDE],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_CarOptionInclude_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarOptionInclude__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarOptionInclude__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarOptionInclude__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarOptionInclude__dbt_tmp_temp_view"
    end


