
  
  if object_id ('"dbo"."Auct_MultiMedia__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MultiMedia__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MultiMedia__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MultiMedia__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MultiMedia__dbt_tmp_temp_view as
    
Select
	cast([MultiMediaID] as int) [MULTIMEDIAID],
	cast([ContentID] as int) [CONTENTID],
	cast([MultiMediaTypeID] as int) [MULTIMEDIATYPEID],
	cast([FileName] as nvarchar(4000)) [FILENAME],
	cast([DateCreated] as datetime) [DATECREATED],
	cast([Active] as int) [ACTIVE],
	cast([MultiMediaCategoryID] as int) [MULTIMEDIACATEGORYID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([PathID] as int) [PATHID],
	cast([SubPath] as nvarchar(4000)) [SUBPATH] 
From stg.[Auct_MultiMedia_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MultiMedia__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MultiMedia__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MultiMedia__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MultiMedia__dbt_tmp_temp_view"
    end

