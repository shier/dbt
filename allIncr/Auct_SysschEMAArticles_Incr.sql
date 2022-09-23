{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([ArtID] as varchar), [Creation_Script], [Description], [Dest_OBJect], [Name], Cast([OBJID] as varchar), Cast([PubID] as varchar), Cast([Pre_Creation_cmd] as varchar), Cast([Status] as varchar), Cast([Type] as varchar), Cast([SchEMA_Option] as varchar), [Dest_Owner])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_SysschEMAArticles_InterView]
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
