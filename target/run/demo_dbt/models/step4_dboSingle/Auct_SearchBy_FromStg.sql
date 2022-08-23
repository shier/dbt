
  
  if object_id ('"dbo"."Auct_SearchBy_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SearchBy_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SearchBy_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SearchBy_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SearchBy_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SearchByID] as int) [SearchByID],
	cast([Active] as bit) [Active],
	cast([SearchForID] as int) [SearchForID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DisplayOrder] as int) [DisplayOrder] 
From stg.[Auct_SearchBy_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SearchBy_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SearchBy_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SearchBy_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SearchBy_FromStg__dbt_tmp_temp_view"
    end


