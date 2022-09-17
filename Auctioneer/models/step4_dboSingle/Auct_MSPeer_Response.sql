{{ config(materialized='table',schema='dbo')}}
Select
	cast([Request_ID] as int) [request_id],
	cast([Peer] as nvarchar(4000)) [peer],
	cast([Peer_Db] as nvarchar(4000)) [peer_db],
	cast([Received_Date] as datetime) [received_date] 
From stg.[Auct_MSPeer_Response_FinalView]