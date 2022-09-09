{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([Amount] as varchar), [LastUpdatedUser], [OfferMessage], [Status], [DecLineMessage], Cast([CreatedOn] as varchar), Cast([UpdatedOn] as varchar), Cast([DeletedOn] as varchar), Cast([Expirationdttm] as varchar), Cast([ID] as varchar), Cast([SEndingUserID] as varchar), Cast([ReceivINgUserID] as varchar), Cast([BuyerID] as varchar), Cast([Quantity] as varchar), Cast([ListingID] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_Offers_InterView]
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
