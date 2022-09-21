
  
  if object_id ('"dbo"."Auct_DriverKeyLocationName__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DriverKeyLocationName__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DriverKeyLocationName__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DriverKeyLocationName__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DriverKeyLocationName__dbt_tmp_temp_view as
    
Select
	cast([DriverKeyLocationNameID] as int) [DRIVERKEYLOCATIONNAMEID],
	cast([KeyLocationName] as nvarchar(4000)) [KEYLOCATIONNAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_DriverKeyLocationName_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DriverKeyLocationName__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DriverKeyLocationName__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DriverKeyLocationName__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DriverKeyLocationName__dbt_tmp_temp_view"
    end


