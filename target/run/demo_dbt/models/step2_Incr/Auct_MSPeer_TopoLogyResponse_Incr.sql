
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_MSPeer_TopoLogyResponse_Incr" ("hashValue", "effectiveTime", "Request_ID", "Peer", "Peer_Version", "Peer_Db", "Originator_ID", "Peer_Conflict_Retention", "Received_Date", "Connection_Info")
    (
        select "hashValue", "effectiveTime", "Request_ID", "Peer", "Peer_Version", "Peer_Db", "Originator_ID", "Peer_Conflict_Retention", "Received_Date", "Connection_Info"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_MSPeer_TopoLogyResponse_Incr__dbt_tmp"
    );

  