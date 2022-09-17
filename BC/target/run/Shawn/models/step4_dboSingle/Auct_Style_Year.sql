
  
  if object_id ('"dbo"."Auct_Style_Year__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Style_Year__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Style_Year__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Style_Year__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Style_Year__dbt_tmp_temp_view as
    
Select
	cast([StyleID] as int) [STYLEID],
	cast([YearID] as int) [YEARID] 
From stg.[Auct_Style_Year_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Style_Year__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Style_Year__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Style_Year__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Style_Year__dbt_tmp_temp_view"
    end


