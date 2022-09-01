
  
  if object_id ('"dbo"."Auct_SysArticleColumns__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysArticleColumns__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SysArticleColumns__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SysArticleColumns__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SysArticleColumns__dbt_tmp_temp_view as
    
Select
	cast([ArtID] as int) [ArtID],
	cast([ColID] as int) [ColID],
	cast([Is_udt] as bit) [Is_udt],
	cast([Is_xml] as bit) [Is_xml],
	cast([Is_Max] as bit) [Is_Max] 
From stg.[Auct_SysArticleColumns_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SysArticleColumns__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SysArticleColumns__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SysArticleColumns__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysArticleColumns__dbt_tmp_temp_view"
    end


