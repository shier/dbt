{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([SparePartsID] as varchar), Cast([DriverInFormationID] as varchar), Cast([SparePartsTypeID] as varchar), [BarcodeID], [PartsDescription], [InActive], Cast([InActiveUpdateEventID] as varchar), [CheckOutText], Cast([CheckOutUpdateEventID] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [SpaceNumber])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_SpareParts_InterView]
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
