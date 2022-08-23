
  
  if object_id ('"dbo"."Auct_CarStyle_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarStyle_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarStyle_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarStyle_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarStyle_FromStg__dbt_tmp_temp_view as
    
Select
	cast([CarStyleID] as int) [CarstyleID],
	cast([Name] as nvarchar(1000)) [CarStyle],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Active] as bit) [IsActive] 
From stg.[Auct_CarStyle_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarStyle_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarStyle_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarStyle_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarStyle_FromStg__dbt_tmp_temp_view"
    end


