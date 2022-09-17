
  
  if object_id ('"dbo"."AH_ThReadTracking__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ThReadTracking__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ThReadTracking__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ThReadTracking__dbt_tmp"
    end


   EXEC('create view dbo.AH_ThReadTracking__dbt_tmp_temp_view as
    
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([ThReadGUID] as nvarchar(4000)) [ThReadGUID],
	cast([DaTestamp] as datetime) [DaTestamp],
	cast([PrimarythRead] as bit) [PrimarythRead] 
From stg.[AH_ThReadTracking_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ThReadTracking__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ThReadTracking__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ThReadTracking__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ThReadTracking__dbt_tmp_temp_view"
    end


