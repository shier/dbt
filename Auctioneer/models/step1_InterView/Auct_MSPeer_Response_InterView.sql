{{ config(materialized='view',schema='stg')}}
Select
	[request_id] [Request_ID],
	cast([peer] as nvarchar(4000)) [Peer],
	cast([peer_db] as nvarchar(4000)) [Peer_Db],
	[received_date] [Received_Date]
From stg.[Auct_MSPeer_Response_Raw]
