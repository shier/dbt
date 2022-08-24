
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_MSPeer_ConflictDetectionConfigResponse_Incr" ("hashValue", "effectiveTime", "Is_Peer", "ConflictDetection_Enabled", "Peer_Continue_OnConflict", "Request_ID", "Peer_Node", "Peer_Db", "Peer_Version", "Peer_Db_Version", "Originator_ID", "Peer_Conflict_Retention", "Peer_SubScriptions", "Progress_Phase", "Modified_Date")
    (
        select "hashValue", "effectiveTime", "Is_Peer", "ConflictDetection_Enabled", "Peer_Continue_OnConflict", "Request_ID", "Peer_Node", "Peer_Db", "Peer_Version", "Peer_Db_Version", "Originator_ID", "Peer_Conflict_Retention", "Peer_SubScriptions", "Progress_Phase", "Modified_Date"
        from "BJAC_DW_PROD"."stg"."#Auct_MSPeer_ConflictDetectionConfigResponse_Incr__dbt_tmp"
    );

  