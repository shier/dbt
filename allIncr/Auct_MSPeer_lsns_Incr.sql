{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([ID] as varchar), Cast([Last_Updated] as varchar), [Originator], [Originator_Db], [Originator_Publication], Cast([Originator_Publication_ID] as varchar), Cast([Originator_Db_Version] as varchar), Cast([Originator_lsn] as varchar), Cast([Originator_Version] as varchar), Cast([Originator_ID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_MSPeer_lsns_InterView]
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
