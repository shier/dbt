{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Is_Peer] as varchar), Cast([ConflictDetection_Enabled] as varchar), Cast([Peer_Continue_OnConflict] as varchar), Cast([Request_ID] as varchar), [Peer_Node], [Peer_Db], Cast([Peer_Version] as varchar), Cast([Peer_Db_Version] as varchar), Cast([Originator_ID] as varchar), Cast([Peer_Conflict_Retention] as varchar), [Peer_SubScriptions], [Progress_Phase], Cast([Modified_Date] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MSPeer_ConflictDetectionConfigResponse_InterView]
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
