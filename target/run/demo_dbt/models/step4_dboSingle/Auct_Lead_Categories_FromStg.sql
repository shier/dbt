
  
  if object_id ('"dbo"."Auct_Lead_Categories_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Lead_Categories_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Lead_Categories_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Lead_Categories_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Lead_Categories_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Lead_Category_ID] as int) [Lead_Category_ID],
	cast([CarTypeID] as int) [CarTypeID],
	cast([UsersID] as int) [UsersID],
	cast([Create_Date] as datetime) [Create_Date] 
From stg.[Auct_Lead_Categories_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Lead_Categories_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Lead_Categories_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Lead_Categories_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Lead_Categories_FromStg__dbt_tmp_temp_view"
    end


