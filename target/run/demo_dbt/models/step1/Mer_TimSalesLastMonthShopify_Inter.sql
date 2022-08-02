
  
  if object_id ('"stg"."Mer_TimSalesLastMonthShopify_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TimSalesLastMonthShopify_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TimSalesLastMonthShopify_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_TimSalesLastMonthShopify_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_TimSalesLastMonthShopify_Inter__dbt_tmp_temp_view as
    
Select
	cast([variant_sku] as nvarchar(4000)) [Variant_SKU],
	cast([order_id] as nvarchar(4000)) [Order_ID],
	[total_sales] [Total_Sales],
	[ordered_item_quantity] [Ordered_Item_Quantity],
	[day] [Day]
From stg.[Mer_TimSalesLastMonthShopify_Raw]
    ');

  CREATE TABLE "stg"."Mer_TimSalesLastMonthShopify_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TimSalesLastMonthShopify_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_TimSalesLastMonthShopify_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TimSalesLastMonthShopify_Inter__dbt_tmp_temp_view"
    end


