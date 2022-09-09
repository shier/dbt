{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([IDEntity_Support] as varchar), Cast([Autogen] as varchar), Cast([ArtID] as varchar), Cast([PubID] as varchar), Cast([Sync_Ins_Proc] as varchar), Cast([Sync_upd_Proc] as varchar), Cast([Sync_Del_Proc] as varchar), Cast([Sync_upd_Trig] as varchar), Cast([Conflict_TableID] as varchar), Cast([Ins_Conflict_Proc] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_SysArticleUpdates_InterView]
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
