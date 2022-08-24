
      
  

    insert into "BJAC_DW_PROD"."stg"."Mer_TempProducts_Incr" ("hashValue", "effectiveTime", "UnitPrice", "No_", "No_2", "Description", "Description2", "BaseUnitofMeasure", "ItemCategoryCode")
    (
        select "hashValue", "effectiveTime", "UnitPrice", "No_", "No_2", "Description", "Description2", "BaseUnitofMeasure", "ItemCategoryCode"
        from "BJAC_DW_PROD"."stg"."#Mer_TempProducts_Incr__dbt_tmp"
    );

  