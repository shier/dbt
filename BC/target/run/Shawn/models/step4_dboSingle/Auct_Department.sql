
  
  if object_id ('"dbo"."Auct_Department__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Department__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Department__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Department__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Department__dbt_tmp_temp_view as
    
Select
	cast([Active] as bit) [ACTIVE],
	cast([DepartmentID] as int) [DEPARTMENTID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([BCDepartmentCode] as nvarchar(4000)) [BCDEPARTMENTCODE] 
From stg.[Auct_Department_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Department__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Department__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Department__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Department__dbt_tmp_temp_view"
    end


