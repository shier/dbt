
  
  if object_id ('"dbo"."Auct_Year__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Year__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Year__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Year__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Year__dbt_tmp_temp_view as
    
Select
	cast([YearID] as int) [YEARID],
	cast([DropDownText] as nvarchar(4000)) [DROPDOWNTEXT],
	cast([DisplayText] as nvarchar(4000)) [DISPLAYTEXT] 
From stg.[Auct_Year_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Year__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Year__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Year__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Year__dbt_tmp_temp_view"
    end


