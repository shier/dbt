
  
  if object_id ('"stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_MSPeer_ConflictDetectionConfigResponse_Final__dbt_tmp_temp_view as
    
Select
	[Is_Peer],[ConflictDetection_Enabled],[Peer_Continue_OnConflict],[Request_ID],[Peer_Node],[Peer_Db],[Peer_Version],[Peer_Db_Version],[Originator_ID],[Peer_Conflict_Retention],[Peer_SubScriptions],[Progress_Phase],[Modified_Date] 
From [Auct_MSPeer_ConflictDetectionConfigResponse_Incr]
    ');

  CREATE TABLE "stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MSPeer_ConflictDetectionConfigResponse_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Final__dbt_tmp_temp_view"
    end


