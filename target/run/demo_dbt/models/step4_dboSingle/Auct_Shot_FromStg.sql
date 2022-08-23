
  
  if object_id ('"dbo"."Auct_Shot_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Shot_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Shot_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Shot_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Shot_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ShotID] as int) [ShotID],
	cast([ContentID] as int) [ContentID],
	cast([FileName] as nvarchar(4000)) [FileName],
	cast([DateCreated] as datetime) [DateCreated],
	cast([Active] as int) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([PathID] as int) [PathID],
	cast([SubPath] as nvarchar(4000)) [SubPath],
	cast([MultiMediaTypeID] as int) [MultiMediaTypeID] 
From stg.[Auct_Shot_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Shot_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Shot_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Shot_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Shot_FromStg__dbt_tmp_temp_view"
    end


