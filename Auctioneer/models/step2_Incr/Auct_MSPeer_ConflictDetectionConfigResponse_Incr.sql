{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([Is_Peer] as varchar), Cast([ConflictDetection_Enabled] as varchar), Cast([Peer_Continue_OnConflict] as varchar), Cast([Request_ID] as varchar), [Peer_Node], [Peer_Db], Cast([Peer_Version] as varchar), Cast([Peer_Db_Version] as varchar), Cast([Originator_ID] as varchar), Cast([Peer_Conflict_Retention] as varchar), [Peer_SubScriptions], [Progress_Phase], Cast([Modified_Date] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_MSPeer_ConflictDetectionConfigResponse_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select dbt_scd_id 
		from {{ this }} compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
{% endif %}
