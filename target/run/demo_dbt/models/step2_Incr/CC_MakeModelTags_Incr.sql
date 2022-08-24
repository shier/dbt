
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_MakeModelTags_Incr" ("hashValue", "effectiveTime", "MakeModelFK", "TagFK")
    (
        select "hashValue", "effectiveTime", "MakeModelFK", "TagFK"
        from "DedicatedSQLpoolBJ"."stg"."#CC_MakeModelTags_Incr__dbt_tmp"
    );

  