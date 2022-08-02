
  
  if object_id ('"stg"."Auct_ConflictDetectionConfigResponse_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConflictDetectionConfigResponse_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ConflictDetectionConfigResponse_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ConflictDetectionConfigResponse_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_ConflictDetectionConfigResponse_Final__dbt_tmp_temp_view as
    
Select
	[Request_ID],[Peer_Version],[Peer_Db_Version],[Originator_ID],[Peer_Conflict_Retention],[Is_Peer],[ConflictDetection_Enabled],[Peer_Continue_OnConflict],[Modified_Date],[Peer_Node],[Peer_Db],[Peer_SubScriptions],[Progress_Phase] 
From [Auct_ConflictDetectionConfigResponse_Incr]
    ');

  CREATE TABLE "stg"."Auct_ConflictDetectionConfigResponse_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ConflictDetectionConfigResponse_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ConflictDetectionConfigResponse_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConflictDetectionConfigResponse_Final__dbt_tmp_temp_view"
    end


