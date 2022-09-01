
  
  if object_id ('"dbo"."Auct_CarEngine__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarEngine__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarEngine__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarEngine__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarEngine__dbt_tmp_temp_view as
    
Select
	cast([CarEngineID] as int) [CarEngineID],
	cast([Displacement] as numeric(18,2)) [Displacement],
	cast([Horsepower] as numeric(18,2)) [Horsepower],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Cylinders] as int) [Cylinders],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CarEngine_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarEngine__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarEngine__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarEngine__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarEngine__dbt_tmp_temp_view"
    end


