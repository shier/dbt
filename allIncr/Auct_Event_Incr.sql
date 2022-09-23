{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([EventID] as varchar), [Name], [Code], [ProjectCode], Cast([Year] as varchar), Cast([ParentEventID] as varchar), Cast([EventTypeID] as varchar), Cast([StartDate] as varchar), Cast([EndDate] as varchar), Cast([Created] as varchar), Cast([Active] as varchar), Cast([CreatedByUserID] as varchar), Cast([LocationAddressID] as varchar), Cast([ShippingAddressID] as varchar), Cast([BillingAddressID] as varchar), [ImageURL], Cast([VenueID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Event_InterView]
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
