
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Variant_SKU], [Order_ID], Cast([Total_Sales] as varchar), Cast([Ordered_Item_Quantity] as varchar), Cast([Day] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TimSalesLastMonthShopify_Inter]
	)
Select * From hashData
