
  
  if object_id ('"dbo"."Auct_CarTransMission_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarTransMission_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarTransMission_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarTransMission_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarTransMission_FromStg__dbt_tmp_temp_view as
    
Select
	cast([CarTransMissionID] as int) [CarTransmissionID],
	cast([Name] as nvarchar(512)) [CarTransmission],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Active] as bit) [IsActive],
	cast([WebActive] as bit) [WebActive] 
From stg.[Auct_CarTransMission_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarTransMission_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarTransMission_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarTransMission_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarTransMission_FromStg__dbt_tmp_temp_view"
    end


