{{ config(materialized='view',schema='stg')}}
Select
	[Variant_SKU],[Order_ID],[Total_Sales],[Ordered_Item_Quantity],[Day] 
From [Mer_TimSalesLastMonthShopify_Incr]