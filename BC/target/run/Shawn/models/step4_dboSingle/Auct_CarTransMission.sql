
  
  if object_id ('"dbo"."Auct_CarTransMission__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarTransMission__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarTransMission__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarTransMission__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarTransMission__dbt_tmp_temp_view as
    
Select
	cast([CarTransMissionID] as int) [CARTRANSMISSIONID],
	cast([Name] as nvarchar(512)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Active] as bit) [ACTIVE],
	cast([WebActive] as bit) [WEBACTIVE] 
From stg.[Auct_CarTransMission_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarTransMission__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarTransMission__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarTransMission__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarTransMission__dbt_tmp_temp_view"
    end


