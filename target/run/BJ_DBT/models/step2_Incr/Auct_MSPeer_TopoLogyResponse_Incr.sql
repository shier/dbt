
      
  
  if object_id ('"stg"."Auct_MSPeer_TopoLogyResponse_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_TopoLogyResponse_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MSPeer_TopoLogyResponse_Incr"','U') is not null
    begin
    drop table "stg"."Auct_MSPeer_TopoLogyResponse_Incr"
    end


   EXEC('create view stg.Auct_MSPeer_TopoLogyResponse_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([Request_ID] as varchar), [Peer], Cast([Peer_Version] as varchar), [Peer_Db], Cast([Originator_ID] as varchar), Cast([Peer_Conflict_Retention] as varchar), Cast([Received_Date] as varchar), [Connection_Info])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MSPeer_TopoLogyResponse_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_MSPeer_TopoLogyResponse_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MSPeer_TopoLogyResponse_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_MSPeer_TopoLogyResponse_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_TopoLogyResponse_Incr_temp_view"
    end



  