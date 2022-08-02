{{ config(materialized='table',schema='dbo')}}
Select
	cast([Is_Peer] as bit) [Is_Peer],
	cast([ConflictDetection_Enabled] as bit) [ConflictDetection_Enabled],
	cast([Peer_Continue_OnConflict] as bit) [Peer_Continue_OnConflict],
	cast([Request_ID] as int) [Request_ID],
	cast([Peer_Node] as nvarchar(4000)) [Peer_Node],
	cast([Peer_Db] as nvarchar(4000)) [Peer_Db],
	cast([Peer_Version] as int) [Peer_Version],
	cast([Peer_Db_Version] as int) [Peer_Db_Version],
	cast([Originator_ID] as int) [Originator_ID],
	cast([Peer_Conflict_Retention] as int) [Peer_Conflict_Retention],
	cast([Peer_SubScriptions] as nvarchar(4000)) [Peer_SubScriptions],
	cast([Progress_Phase] as nvarchar(4000)) [Progress_Phase],
	cast([Modified_Date] as datetime) [Modified_Date] 
From stg.[Auct_MSPeer_ConflictDetectionConfigResponse_FinalView]