
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Mer_FromItemTable_Incr" ("hashValue", "effectiveTime", "TimeStamp", "Type", "Inventory_Posting_Group", "Item_Category_Code", "No_", "Description", "Search_Description", "Description_2", "Base_Unit_Of_Measure", "Price_Unit_ConVersion", "No__2")
    (
        select "hashValue", "effectiveTime", "TimeStamp", "Type", "Inventory_Posting_Group", "Item_Category_Code", "No_", "Description", "Search_Description", "Description_2", "Base_Unit_Of_Measure", "Price_Unit_ConVersion", "No__2"
        from "DedicatedSQLpoolBJ"."stg"."#Mer_FromItemTable_Incr__dbt_tmp"
    );

  