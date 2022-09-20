
  
  if object_id ('"dbo"."Auct_Lead_YMM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Lead_YMM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Lead_YMM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Lead_YMM__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Lead_YMM__dbt_tmp_temp_view as
    
Select
	cast([Lead_YMM_ID] as int) [LEAD_YMM_ID],
	cast([UsersID] as int) [USERSID],
	cast([Car_Year] as nvarchar(4000)) [CAR_YEAR],
	cast([Car_Make] as nvarchar(4000)) [CAR_MAKE],
	cast([Car_Model] as nvarchar(4000)) [CAR_MODEL],
	cast([Create_Date] as datetime) [CREATE_DATE] 
From stg.[Auct_Lead_YMM_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Lead_YMM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Lead_YMM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Lead_YMM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Lead_YMM__dbt_tmp_temp_view"
    end

