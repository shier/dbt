
  
  if object_id ('"dbo"."Auct_Driver__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Driver__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Driver__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Driver__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Driver__dbt_tmp_temp_view as
    
Select
	cast([DriverID] as int) [DriverID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created] 
From stg.[Auct_Driver_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Driver__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Driver__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Driver__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Driver__dbt_tmp_temp_view"
    end


