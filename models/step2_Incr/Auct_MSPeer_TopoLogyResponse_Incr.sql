{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Request_ID] as varchar), [Peer], Cast([Peer_Version] as varchar), [Peer_Db], Cast([Originator_ID] as varchar), Cast([Peer_Conflict_Retention] as varchar), Cast([Received_Date] as varchar), [Connection_Info])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MSPeer_TopoLogyResponse_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select hashValue 
		from {{ this }} compareData
		where hashData.hashValue=compareData.hashValue
	)
{% endif %}
