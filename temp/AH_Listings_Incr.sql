{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat([LastUpdatedUser], [PrimaryImageURI], [OwnerUserName], [CurrentListingActionUserName], [Title], [Description], [SubTitle], [Location], [Status], Cast([CreatedOn] as varchar), Cast([UpdatedOn] as varchar), Cast([DeletedOn] as varchar), Cast([Enddttm] as varchar), Cast([Startdttm] as varchar), Cast([AutoreListrEMAining] as varchar), Cast([CurrentQuantity] as varchar), Cast([OriginalQuantity] as varchar), Cast([ReListiteration] as varchar), Cast([LotID] as varchar), Cast([AcceptedActionCount] as varchar), Cast([OwnerID] as varchar), Cast([ListingTypeID] as varchar), Cast([Duration] as varchar), Cast([Version] as varchar), Cast([CurrencyID] as varchar), Cast([PrimaryCategoryID] as varchar), Cast([CurrentListingActionID] as varchar), Cast([OfferCount] as varchar), Cast([ID] as varchar), Cast([OriginalreListCount] as varchar), Cast([Hits] as varchar), Cast([CurrentPrice] as varchar), Cast([Increment] as varchar), Cast([OriginalPrice] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_Listings_InterView]
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
