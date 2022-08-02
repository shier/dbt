create view "stg"."Mer_TimSalesLastMonthShopify_FinalView__dbt_tmp" as
    
Select
	[Variant_SKU],[Order_ID],[Total_Sales],[Ordered_Item_Quantity],[Day] 
From [Mer_TimSalesLastMonthShopify_Incr]
