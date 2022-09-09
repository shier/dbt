
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_MSPeer_TopoLogyResponse_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_MSPeer_TopoLogyResponse_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_MSPeer_TopoLogyResponse_Incr" ("Request_ID", "Peer", "Peer_Version", "Peer_Db", "Originator_ID", "Peer_Conflict_Retention", "Received_Date", "Connection_Info", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "Request_ID", "Peer", "Peer_Version", "Peer_Db", "Originator_ID", "Peer_Conflict_Retention", "Received_Date", "Connection_Info", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_MSPeer_TopoLogyResponse_Incr__dbt_tmp"
    );

  