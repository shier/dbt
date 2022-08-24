{{ config(materialized='view',schema='stg')}}
Select
	[Request_ID],[Peer],[Peer_Db],[Received_Date] 
From stg.[Auct_MSPeer_Response_Incr] 
Where [dbt_valid_to] is null