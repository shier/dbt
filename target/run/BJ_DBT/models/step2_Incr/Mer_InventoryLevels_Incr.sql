
      
  

    insert into "BJAC_DW_PROD"."stg"."Mer_InventoryLevels_Incr" ("hashValue", "effectiveTime", "Count", "SKU")
    (
        select "hashValue", "effectiveTime", "Count", "SKU"
        from "BJAC_DW_PROD"."stg"."#Mer_InventoryLevels_Incr__dbt_tmp"
    );

  