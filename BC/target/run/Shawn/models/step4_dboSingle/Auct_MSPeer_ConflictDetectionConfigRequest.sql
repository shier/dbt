
  
  if object_id ('"dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [id],
	cast([Publication] as nvarchar(4000)) [publication],
	cast([Sent_Date] as datetime) [sent_date],
	cast([TimeOut] as int) [timeout],
	cast([Modified_Date] as datetime) [modified_date],
	cast([Progress_Phase] as nvarchar(4000)) [progress_phase],
	cast([Phase_Timed_Out] as bit) [phase_timed_out] 
From stg.[Auct_MSPeer_ConflictDetectionConfigRequest_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_ConflictDetectionConfigRequest__dbt_tmp_temp_view"
    end


