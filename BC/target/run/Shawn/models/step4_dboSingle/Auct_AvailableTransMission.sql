
  
  if object_id ('"dbo"."Auct_AvailableTransMission__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AvailableTransMission__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_AvailableTransMission__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_AvailableTransMission__dbt_tmp"
    end


   EXEC('create view dbo.Auct_AvailableTransMission__dbt_tmp_temp_view as
    
Select
	cast([AvailableTransMissionID] as int) [AVAILABLETRANSMISSIONID],
	cast([CarTransMissionID] as int) [CARTRANSMISSIONID],
	cast([CarModelID] as int) [CARMODELID],
	cast([AllowDropDown] as nvarchar(4000)) [ALLOWDROPDOWN],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AvailableTransMission_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_AvailableTransMission__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_AvailableTransMission__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_AvailableTransMission__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_AvailableTransMission__dbt_tmp_temp_view"
    end


