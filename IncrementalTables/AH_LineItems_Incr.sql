{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat([Currency], [Status], [Type], [LotNumber], [Description], [LastUpdatedUser], Cast([CreatedOn] as varchar), Cast([UpdatedOn] as varchar), Cast([DeletedOn] as varchar), Cast([DaTestamp] as varchar), Cast([ID] as varchar), Cast([InvoiceID] as varchar), Cast([ListingID] as varchar), Cast([Quantity] as varchar), Cast([OwnerID] as varchar), Cast([PayerID] as varchar), Cast([ReListiteration] as varchar), Cast([AuctionEventID] as varchar), Cast([TotalAmount] as varchar), Cast([PeRunitAmount] as varchar), Cast([Taxable] as varchar), Cast([IsArchived] as varchar), Cast([BuyersPremiuMapplies] as varchar), Cast([IsPayerArchived] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_LineItems_InterView]
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
