{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat([Option2], [Option3], [Barcode], [WEightUnit], [InventoryItemID], [ID], [ProductID], [Title], [SKU], [FulfillmentService], [Option1], Cast([CreatedDate] as varchar), Cast([Updateddate] as varchar), Cast([RemovedDate] as varchar), Cast([Position] as varchar), Cast([Taxable] as varchar), Cast([RequiresShipping] as varchar), Cast([Price] as varchar), Cast([CompAreatPrice] as varchar), Cast([Grams] as varchar), Cast([Inventoryqty] as varchar), Cast([WEight] as varchar), Cast([DelayedsellOnlineqty] as varchar), Cast([OldInventoryqty] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Mer_ShopifyProductVariants_InterView]
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
