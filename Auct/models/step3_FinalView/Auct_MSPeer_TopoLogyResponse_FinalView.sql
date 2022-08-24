{{ config(materialized='view',schema='stg')}}
Select
	[Request_ID],[Peer],[Peer_Version],[Peer_Db],[Originator_ID],[Peer_Conflict_Retention],[Received_Date],[Connection_Info] 
From [Auct_MSPeer_TopoLogyResponse_Incr]