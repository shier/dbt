create view "stg"."Auct_MSPeer_Response_InterView__dbt_tmp" as
    
Select
	[request_id] [Request_ID],
	cast([peer] as nvarchar(4000)) [Peer],
	cast([peer_db] as nvarchar(4000)) [Peer_Db],
	[received_date] [Received_Date]
From stg.[Auct_MSPeer_Response_Raw]
