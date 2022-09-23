{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([ReservationID] as varchar), Cast([CustomerAccountID] as varchar), Cast([AddressID] as varchar), Cast([PhoneID] as varchar), Cast([SiteCategoryID] as varchar), Cast([SiteID] as varchar), Cast([EventID] as varchar), Cast([StartDate] as varchar), Cast([EndDate] as varchar), Cast([IsCheckedIn] as varchar), Cast([CheckinDate] as varchar), Cast([CheckOutDate] as varchar), Cast([ReservationStatusID] as varchar), Cast([ChargeID] as varchar), Cast([OccupantCustomerAccountID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_Reservation_InterView]
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
