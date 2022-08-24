
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Mer_InventoryLevels_Incr" ("hashValue", "effectiveTime", "Count", "SKU")
    (
        select "hashValue", "effectiveTime", "Count", "SKU"
        from "DedicatedSQLpoolBJ"."stg"."#Mer_InventoryLevels_Incr__dbt_tmp"
    );

  