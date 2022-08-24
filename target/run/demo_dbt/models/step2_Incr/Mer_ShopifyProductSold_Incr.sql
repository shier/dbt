
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Mer_ShopifyProductSold_Incr" ("hashValue", "effectiveTime", "Handle", "VariantSKU")
    (
        select "hashValue", "effectiveTime", "Handle", "VariantSKU"
        from "DedicatedSQLpoolBJ"."stg"."#Mer_ShopifyProductSold_Incr__dbt_tmp"
    );

  