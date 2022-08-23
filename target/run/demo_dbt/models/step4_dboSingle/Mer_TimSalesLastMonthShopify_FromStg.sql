
  
  if object_id ('"dbo"."Mer_TimSalesLastMonthShopify_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TimSalesLastMonthShopify_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_TimSalesLastMonthShopify_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_TimSalesLastMonthShopify_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_TimSalesLastMonthShopify_FromStg__dbt_tmp_temp_view as
    
Select
	cast([Variant_SKU] as varchar(64)) [SKU],
	cast([Order_ID] as varchar(100)) [OrderID],
	cast([Total_Sales] as money) [TotalSalesPrice],
	cast([Ordered_Item_Quantity] as int) [OrderedItemQTY],
	cast([Day] as date) [Created] 
From stg.[Mer_TimSalesLastMonthShopify_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_TimSalesLastMonthShopify_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_TimSalesLastMonthShopify_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_TimSalesLastMonthShopify_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_TimSalesLastMonthShopify_FromStg__dbt_tmp_temp_view"
    end


