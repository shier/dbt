
  
  if object_id ('"dbo"."Auct_AA_WebData_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AA_WebData_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AA_WebData_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AA_WebData_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AA_WebData_FromStg__dbt_tmp_temp_view as
    
Select
	cast([CarInfoID] as int) [CarInfoID],
	cast([Horsepower] as nvarchar(4000)) [Horsepower],
	cast([OriginalHorsepower] as int) [OriginalHorsepower] 
From stg.[Auct_AA_WebData_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AA_WebData_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AA_WebData_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AA_WebData_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AA_WebData_FromStg__dbt_tmp_temp_view"
    end


