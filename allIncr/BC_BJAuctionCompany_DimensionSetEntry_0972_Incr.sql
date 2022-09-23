{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat([DimensionCode], Cast([GlobalDimensionNo] as varchar), Cast([DimensionSetID] as varchar), Cast([systemCreatedAt] as varchar), [systemCreatedBy], [DimensionValueCode], Cast([timestamp] as varchar), Cast([DimensionValueID] as varchar), Cast([systemModifiedAt] as varchar), [systemId], [systemModifiedBy])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[BC_BJAuctionCompany_DimensionSetEntry_0972_InterView]
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
