{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([ID] as varchar), Cast([ResponseCode] as varchar), Cast([ForeignID] as varchar), Cast([DateSent] as varchar), Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar), Cast([IsActive] as varchar), [SentFrom], [Replyto], [IpAddress], [Template], [Fields], [Meta], [Response], [MandrillID], [MandrillrejectReason], [SuBJect])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_EmailProcessed_InterView]
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
