
  
  if object_id ('"dbo"."Auct_MSPeer_ConflictDetectionConfigResponse__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_ConflictDetectionConfigResponse__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MSPeer_ConflictDetectionConfigResponse__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MSPeer_ConflictDetectionConfigResponse__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MSPeer_ConflictDetectionConfigResponse__dbt_tmp_temp_view as
    
Select
	cast([Is_Peer] as bit) [is_peer],
	cast([ConflictDetection_Enabled] as bit) [conflictdetection_enabled],
	cast([Peer_Continue_OnConflict] as bit) [peer_continue_onconflict],
	cast([Request_ID] as int) [request_id],
	cast([Peer_Node] as nvarchar(4000)) [peer_node],
	cast([Peer_Db] as nvarchar(4000)) [peer_db],
	cast([Peer_Version] as int) [peer_version],
	cast([Peer_Db_Version] as int) [peer_db_version],
	cast([Originator_ID] as int) [originator_id],
	cast([Peer_Conflict_Retention] as int) [peer_conflict_retention],
	cast([Peer_SubScriptions] as nvarchar(4000)) [peer_subscriptions],
	cast([Progress_Phase] as nvarchar(4000)) [progress_phase],
	cast([Modified_Date] as datetime) [modified_date] 
From stg.[Auct_MSPeer_ConflictDetectionConfigResponse_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MSPeer_ConflictDetectionConfigResponse__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MSPeer_ConflictDetectionConfigResponse__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MSPeer_ConflictDetectionConfigResponse__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_ConflictDetectionConfigResponse__dbt_tmp_temp_view"
    end


