{{ config(materialized='view',schema='stg')}}
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
