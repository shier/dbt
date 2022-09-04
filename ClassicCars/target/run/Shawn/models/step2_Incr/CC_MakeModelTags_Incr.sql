
      
  

    insert into "BJAC_DW_PROD"."stg"."CC_MakeModelTags_Incr" ("hashValue", "effectiveTime", "MakeModelFK", "TagFK")
    (
        select "hashValue", "effectiveTime", "MakeModelFK", "TagFK"
        from "BJAC_DW_PROD"."stg"."#CC_MakeModelTags_Incr__dbt_tmp"
    );

  