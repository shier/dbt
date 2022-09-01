{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Publication],[Sent_Date],[Description] 
From stg.[Auct_MSPeer_Request_Incr] 
Where [dbt_valid_to] is null