
      
  

    insert into "BJAC_DW_PROD"."stg"."Mer_TimSalesLastMonthShopify_Incr" ("hashValue", "effectiveTime", "Variant_SKU", "Order_ID", "Total_Sales", "Ordered_Item_Quantity", "Day")
    (
        select "hashValue", "effectiveTime", "Variant_SKU", "Order_ID", "Total_Sales", "Ordered_Item_Quantity", "Day"
        from "BJAC_DW_PROD"."stg"."#Mer_TimSalesLastMonthShopify_Incr__dbt_tmp"
    );

  