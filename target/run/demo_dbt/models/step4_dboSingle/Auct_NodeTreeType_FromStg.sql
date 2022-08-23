
  
  if object_id ('"dbo"."Auct_NodeTreeType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NodeTreeType_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NodeTreeType_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NodeTreeType_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NodeTreeType_FromStg__dbt_tmp_temp_view as
    
Select
	cast([NodeTreeTypeID] as int) [NodeTreeTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as int) [Active] 
From stg.[Auct_NodeTreeType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NodeTreeType_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NodeTreeType_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NodeTreeType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NodeTreeType_FromStg__dbt_tmp_temp_view"
    end


