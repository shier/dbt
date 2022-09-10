{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([SubordinateContactID] as varchar), Cast([MediaAuctionID] as varchar), Cast([SponsorAuctionID] as varchar), Cast([VendorID] as varchar), Cast([ContactID] as varchar), Cast([MediaPositionID] as varchar), [DaysCovering], [JobTitle], Cast([Created] as varchar), Cast([UpdateEventID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_SubordinateContact_InterView]
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
