
Select
	cast(variant_sku as nvarchar(4000)) Variant_Sku,
	cast(order_id as nvarchar(4000)) Order_ID,
	total_sales Total_Sales,
	ordered_item_quantity Ordered_Item_Quantity,
	day Day
From Mer_TimSalesLastMonthShopify_Raw