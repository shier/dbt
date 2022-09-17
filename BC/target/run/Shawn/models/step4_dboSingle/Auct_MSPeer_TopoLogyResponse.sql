
  
  if object_id ('"dbo"."Auct_MSPeer_TopoLogyResponse__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_TopoLogyResponse__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MSPeer_TopoLogyResponse__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MSPeer_TopoLogyResponse__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MSPeer_TopoLogyResponse__dbt_tmp_temp_view as
    
Select
	cast([Request_ID] as int) [request_id],
	cast([Peer] as nvarchar(4000)) [peer],
	cast([Peer_Version] as int) [peer_version],
	cast([Peer_Db] as nvarchar(4000)) [peer_db],
	cast([Originator_ID] as int) [originator_id],
	cast([Peer_Conflict_Retention] as int) [peer_conflict_retention],
	cast([Received_Date] as datetime) [received_date],
	cast([Connection_Info] as nvarchar(4000)) [connection_info] 
From stg.[Auct_MSPeer_TopoLogyResponse_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MSPeer_TopoLogyResponse__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MSPeer_TopoLogyResponse__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MSPeer_TopoLogyResponse__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MSPeer_TopoLogyResponse__dbt_tmp_temp_view"
    end


