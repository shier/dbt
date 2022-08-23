
  
  if object_id ('"dbo"."Auct_Path_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Path_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Path_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Path_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Path_FromStg__dbt_tmp_temp_view as
    
Select
	cast([PathID] as int) [PathID],
	cast([Path] as nvarchar(4000)) [Path],
	cast([Active] as int) [Active] 
From stg.[Auct_Path_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Path_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Path_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Path_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Path_FromStg__dbt_tmp_temp_view"
    end

