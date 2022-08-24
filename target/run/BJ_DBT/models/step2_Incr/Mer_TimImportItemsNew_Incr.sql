
      
  

    insert into "BJAC_DW_PROD"."stg"."Mer_TimImportItemsNew_Incr" ("hashValue", "effectiveTime", "Upc", "Orig_Retail_Price", "Category", "SKU", "Item_Description", "Size")
    (
        select "hashValue", "effectiveTime", "Upc", "Orig_Retail_Price", "Category", "SKU", "Item_Description", "Size"
        from "BJAC_DW_PROD"."stg"."#Mer_TimImportItemsNew_Incr__dbt_tmp"
    );

  