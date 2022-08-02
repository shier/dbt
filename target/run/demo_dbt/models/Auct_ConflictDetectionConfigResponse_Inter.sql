
  
  if object_id ('"stg"."Auct_ConflictDetectionConfigResponse_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConflictDetectionConfigResponse_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ConflictDetectionConfigResponse_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ConflictDetectionConfigResponse_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ConflictDetectionConfigResponse_Inter__dbt_tmp_temp_view as
    
Select
	request_id Request_ID,
	peer_version Peer_Version,
	peer_db_version Peer_Db_Version,
	originator_id Originator_ID,
	peer_conflict_retention Peer_Conflict_Retention,
	is_peer Is_Peer,
	conflictdetection_enabled ConflictDetection_Enabled,
	peer_continue_onconflict Peer_Continue_OnConflict,
	modified_date Modified_Date,
	cast(peer_node as nvarchar(4000)) Peer_Node,
	cast(peer_db as nvarchar(4000)) Peer_Db,
	cast(peer_subscriptions as nvarchar(4000)) Peer_SubScriptions,
	cast(progress_phase as nvarchar(4000)) Progress_Phase
From Auct_ConflictDetectionConfigResponse_Raw
    ');

  CREATE TABLE "stg"."Auct_ConflictDetectionConfigResponse_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ConflictDetectionConfigResponse_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ConflictDetectionConfigResponse_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConflictDetectionConfigResponse_Inter__dbt_tmp_temp_view"
    end


