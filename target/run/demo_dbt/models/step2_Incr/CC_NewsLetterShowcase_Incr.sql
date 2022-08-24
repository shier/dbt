
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_NewsLetterShowcase_Incr" ("hashValue", "effectiveTime", "IsActive", "NewsLetterissueFK", "ListingFK", "ShowcaseSequence", "CreateDateUTC", "ModifyDateUTC")
    (
        select "hashValue", "effectiveTime", "IsActive", "NewsLetterissueFK", "ListingFK", "ShowcaseSequence", "CreateDateUTC", "ModifyDateUTC"
        from "DedicatedSQLpoolBJ"."stg"."#CC_NewsLetterShowcase_Incr__dbt_tmp"
    );

  