{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Publication],[Sent_Date] 
From stg.[Auct_MSPeer_TopoLogyRequest_Incr] 
Where [dbt_valid_to] is null