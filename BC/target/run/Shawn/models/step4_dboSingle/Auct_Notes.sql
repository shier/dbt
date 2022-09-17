
  
  if object_id ('"dbo"."Auct_Notes__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Notes__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Notes__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Notes__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Notes__dbt_tmp_temp_view as
    
Select
	cast([NoteID] as int) [NOTEID],
	cast([Text] as nvarchar(4000)) [TEXT],
	cast([NoteCategoryID] as int) [NOTECATEGORYID],
	cast([UserName] as nvarchar(512)) [USERNAME],
	cast([Created] as datetime) [CREATED] 
From stg.[Auct_Notes_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Notes__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Notes__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Notes__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Notes__dbt_tmp_temp_view"
    end


