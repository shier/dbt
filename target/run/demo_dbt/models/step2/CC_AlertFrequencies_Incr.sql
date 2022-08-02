
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_AlertFrequencies_Incr" ("hashValue", "effectiveTime", "Description", "ID")
    (
        select "hashValue", "effectiveTime", "Description", "ID"
        from "DedicatedSQLpoolBJ"."stg"."#CC_AlertFrequencies_Incr__dbt_tmp"
    );

  