{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([IDEntity_Support] as varchar), Cast([Autogen] as varchar), Cast([ArtID] as varchar), Cast([PubID] as varchar), Cast([Sync_Ins_Proc] as varchar), Cast([Sync_upd_Proc] as varchar), Cast([Sync_Del_Proc] as varchar), Cast([Sync_upd_Trig] as varchar), Cast([Conflict_TableID] as varchar), Cast([Ins_Conflict_Proc] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_SysArticleUpdates_InterView]
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
