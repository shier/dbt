
  
  if object_id ('"stg"."Auct_MSPeer_TopoLogyResponse_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_TopoLogyResponse_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MSPeer_TopoLogyResponse_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MSPeer_TopoLogyResponse_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_MSPeer_TopoLogyResponse_Inter__dbt_tmp_temp_view as
    
Select
	[request_id] [Request_ID],
	cast([peer] as nvarchar(4000)) [Peer],
	[peer_version] [Peer_Version],
	cast([peer_db] as nvarchar(4000)) [Peer_Db],
	[originator_id] [Originator_ID],
	[peer_conflict_retention] [Peer_Conflict_Retention],
	[received_date] [Received_Date],
	cast([connection_info] as nvarchar(4000)) [Connection_Info]
From stg.[Auct_MSPeer_TopoLogyResponse_Raw]
    ');

  CREATE TABLE "stg"."Auct_MSPeer_TopoLogyResponse_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MSPeer_TopoLogyResponse_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MSPeer_TopoLogyResponse_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MSPeer_TopoLogyResponse_Inter__dbt_tmp_temp_view"
    end


