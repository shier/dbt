{{ config(materialized='table',schema='dbo')}}
Select
	cast([Variant_SKU] as varchar(64)) [SKU],
	cast([Order_ID] as varchar(100)) [OrderID],
	cast([Total_Sales] as money) [TotalSalesPrice],
	cast([Ordered_Item_Quantity] as int) [OrderedItemQTY],
	cast([Day] as date) [Created] 
From stg.[Mer_TimSalesLastMonthShopify_FinalView]