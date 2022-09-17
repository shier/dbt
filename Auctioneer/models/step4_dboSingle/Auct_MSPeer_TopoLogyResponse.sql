{{ config(materialized='table',schema='dbo')}}
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