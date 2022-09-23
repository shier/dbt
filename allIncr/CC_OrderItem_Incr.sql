{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*,HASHBYTES('SHA2_256', concat(Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar), Cast([LastSalesForceActivityDate] as varchar), Cast([ID] as varchar), Cast([OrderID] as varchar), Cast([ProductID] as varchar), Cast([Quantity] as varchar), Cast([ItemID] as varchar), Cast([IsActive] as varchar), Cast([Price] as varchar), Cast([StockPrice] as varchar), Cast([AfterDiscountPrice] as varchar), [ItemInfo], [SalesForceOpportunityID])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_OrderItem_InterView]
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
