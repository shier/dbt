{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Upc] as varchar), Cast([Orig_Retail_Price] as varchar), [Category], [SKU], [Item_Description], [Size])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TimImportItemsNew_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select hashValue 
		from {{ this }} compareData
		where hashData.hashValue=compareData.hashValue
	)
{% endif %}
