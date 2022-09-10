{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([DriverInFormationID] as varchar), Cast([ConsignmentID] as varchar), Cast([TentLocationID] as varchar), [TentSpaceNumber], Cast([DeLiveryCarrierID] as varchar), [DeLiveryCarrierOther], Cast([CheckedInUsersID] as varchar), [SpareParts], [VINLocation], Cast([CheckedOutUsersID] as varchar), Cast([ShippedCarrierID] as varchar), [ShippedCarrierOther], [CheckedOutName], [BidderNumber], [LicenseNumber], Cast([Created] as varchar), Cast([UpdateEventID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_DriverInFormation_InterView]
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
