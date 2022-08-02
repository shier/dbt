
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."AH_Attributes_Incr" ("effectiveTime", "Name", "Value", "EditMode", "Type", "ConText", "Updatedon", "Deletedon", "Createdon", "ID")
    (
        select "effectiveTime", "Name", "Value", "EditMode", "Type", "ConText", "Updatedon", "Deletedon", "Createdon", "ID"
        from "DedicatedSQLpoolBJ"."stg"."#AH_Attributes_Incr__dbt_tmp"
    );

  