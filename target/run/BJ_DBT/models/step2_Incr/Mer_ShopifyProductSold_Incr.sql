
      
  

    insert into "BJAC_DW_PROD"."stg"."Mer_ShopifyProductSold_Incr" ("hashValue", "effectiveTime", "Handle", "VariantSKU")
    (
        select "hashValue", "effectiveTime", "Handle", "VariantSKU"
        from "BJAC_DW_PROD"."stg"."#Mer_ShopifyProductSold_Incr__dbt_tmp"
    );

  