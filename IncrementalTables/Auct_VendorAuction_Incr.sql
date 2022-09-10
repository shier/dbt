{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([VendorAuctionID] as varchar), Cast([AuctionID] as varchar), Cast([VendorID] as varchar), Cast([ContractDate] as varchar), Cast([ApplicationDate] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), [Comments], Cast([Legacy_VendorID] as varchar), Cast([SpecialVendorTypeID] as varchar), Cast([Spacecost] as varchar), Cast([SpecialVendorValue] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_VendorAuction_InterView]
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
