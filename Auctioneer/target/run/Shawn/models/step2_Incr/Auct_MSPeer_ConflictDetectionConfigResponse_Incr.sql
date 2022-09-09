
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_MSPeer_ConflictDetectionConfigResponse_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Incr" ("Is_Peer", "ConflictDetection_Enabled", "Peer_Continue_OnConflict", "Request_ID", "Peer_Node", "Peer_Db", "Peer_Version", "Peer_Db_Version", "Originator_ID", "Peer_Conflict_Retention", "Peer_SubScriptions", "Progress_Phase", "Modified_Date", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "Is_Peer", "ConflictDetection_Enabled", "Peer_Continue_OnConflict", "Request_ID", "Peer_Node", "Peer_Db", "Peer_Version", "Peer_Db_Version", "Originator_ID", "Peer_Conflict_Retention", "Peer_SubScriptions", "Progress_Phase", "Modified_Date", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_MSPeer_ConflictDetectionConfigResponse_Incr__dbt_tmp"
    );

  