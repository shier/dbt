
  
  if object_id ('"dbo"."Auct_CarOptioncar__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarOptioncar__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarOptioncar__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarOptioncar__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarOptioncar__dbt_tmp_temp_view as
    
Select
	cast([CarOptioncarID] as int) [CAROPTIONCARID],
	cast([CarOptionID] as int) [CAROPTIONID],
	cast([CarID] as int) [CARID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_CarOptioncar_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarOptioncar__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarOptioncar__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarOptioncar__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarOptioncar__dbt_tmp_temp_view"
    end


