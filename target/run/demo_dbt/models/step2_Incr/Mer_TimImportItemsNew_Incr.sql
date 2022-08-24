
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Mer_TimImportItemsNew_Incr" ("hashValue", "effectiveTime", "Upc", "Orig_Retail_Price", "Category", "SKU", "Item_Description", "Size")
    (
        select "hashValue", "effectiveTime", "Upc", "Orig_Retail_Price", "Category", "SKU", "Item_Description", "Size"
        from "DedicatedSQLpoolBJ"."stg"."#Mer_TimImportItemsNew_Incr__dbt_tmp"
    );

  