
  
  if object_id ('"dbo"."Auct_DriverKeyLocations__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DriverKeyLocations__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DriverKeyLocations__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DriverKeyLocations__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DriverKeyLocations__dbt_tmp_temp_view as
    
Select
	cast([DriverKeyLocationsID] as int) [DRIVERKEYLOCATIONSID],
	cast([DriverInFormationID] as int) [DRIVERINFORMATIONID],
	cast([DriverKeyLocationNameID] as int) [DRIVERKEYLOCATIONNAMEID],
	cast([KeyLocationOther] as nvarchar(4000)) [KEYLOCATIONOTHER],
	cast([KeyLocationComment] as nvarchar(4000)) [KEYLOCATIONCOMMENT],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_DriverKeyLocations_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DriverKeyLocations__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DriverKeyLocations__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DriverKeyLocations__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DriverKeyLocations__dbt_tmp_temp_view"
    end


