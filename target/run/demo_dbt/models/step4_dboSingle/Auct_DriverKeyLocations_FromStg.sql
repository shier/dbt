
  
  if object_id ('"dbo"."Auct_DriverKeyLocations_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DriverKeyLocations_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_DriverKeyLocations_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_DriverKeyLocations_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_DriverKeyLocations_FromStg__dbt_tmp_temp_view as
    
Select
	cast([DriverKeyLocationsID] as int) [DriverKeyLocationsID],
	cast([DriverInFormationID] as int) [DriverInFormationID],
	cast([DriverKeyLocationNameID] as int) [DriverKeyLocationNameID],
	cast([KeyLocationOther] as nvarchar(4000)) [KeyLocationOther],
	cast([KeyLocationComment] as nvarchar(4000)) [KeyLocationComment],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_DriverKeyLocations_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_DriverKeyLocations_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_DriverKeyLocations_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_DriverKeyLocations_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_DriverKeyLocations_FromStg__dbt_tmp_temp_view"
    end


