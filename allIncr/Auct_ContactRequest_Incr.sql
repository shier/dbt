{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([ContactRequestID] as varchar), Cast([FromContactID] as varchar), Cast([RequestTypeID] as varchar), Cast([AssignedContactID] as varchar), Cast([CompanyID] as varchar), Cast([PhoneID] as varchar), Cast([AddressID] as varchar), [EmailAddress], [RequestFulfilled], Cast([DateFulfilled] as varchar), [SuBJect], [CustomerComments], [RequestNotes], Cast([AppointmentTimeStamp] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_ContactRequest_InterView]
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
