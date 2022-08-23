
  
  if object_id ('"stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MSPeer_ConflictDetectionConfigResponse_Inter__dbt_tmp_temp_view as
    
Select
	[is_peer] [Is_Peer],
	[conflictdetection_enabled] [ConflictDetection_Enabled],
	[peer_continue_onconflict] [Peer_Continue_OnConflict],
	[request_id] [Request_ID],
	cast([peer_node] as nvarchar(4000)) [Peer_Node],
	cast([peer_db] as nvarchar(4000)) [Peer_Db],
	[peer_version] [Peer_Version],
	[peer_db_version] [Peer_Db_Version],
	[originator_id] [Originator_ID],
	[peer_conflict_retention] [Peer_Conflict_Retention],
	cast([peer_subscriptions] as nvarchar(4000)) [Peer_SubScriptions],
	cast([progress_phase] as nvarchar(4000)) [Progress_Phase],
	[modified_date] [Modified_Date]
From stg.[Auct_MSPeer_ConflictDetectionConfigResponse_Raw]
    ');

  CREATE TABLE "stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MSPeer_ConflictDetectionConfigResponse_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Inter__dbt_tmp_temp_view"
    end

