
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Mer_TempProducts_Incr" ("hashValue", "effectiveTime", "UnitPrice", "No_", "No_2", "Description", "Description2", "BaseUnitofMeasure", "ItemCategoryCode")
    (
        select "hashValue", "effectiveTime", "UnitPrice", "No_", "No_2", "Description", "Description2", "BaseUnitofMeasure", "ItemCategoryCode"
        from "DedicatedSQLpoolBJ"."stg"."#Mer_TempProducts_Incr__dbt_tmp"
    );

  