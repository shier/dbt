
  
  if object_id ('"dbo"."Auct_SearchBy__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SearchBy__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SearchBy__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SearchBy__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SearchBy__dbt_tmp_temp_view as
    
Select
	cast([Active] as bit) [ACTIVE],
	cast([SearchByID] as int) [SEARCHBYID],
	cast([SearchForID] as int) [SEARCHFORID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([DisplayOrder] as int) [DISPLAYORDER] 
From stg.[Auct_SearchBy_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SearchBy__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SearchBy__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SearchBy__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SearchBy__dbt_tmp_temp_view"
    end


