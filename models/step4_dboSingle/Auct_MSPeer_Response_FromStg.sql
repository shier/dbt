{{ config(materialized='table',schema='dbo')}}
Select
	cast([Request_ID] as int) [Request_ID],
	cast([Peer] as nvarchar(4000)) [Peer],
	cast([Peer_Db] as nvarchar(4000)) [Peer_Db],
	cast([Received_Date] as datetime) [Received_Date] 
From stg.[Auct_MSPeer_Response_FinalView]