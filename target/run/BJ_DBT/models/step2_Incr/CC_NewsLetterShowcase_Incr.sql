
      
  

    insert into "BJAC_DW_PROD"."stg"."CC_NewsLetterShowcase_Incr" ("hashValue", "effectiveTime", "IsActive", "NewsLetterissueFK", "ListingFK", "ShowcaseSequence", "CreateDateUTC", "ModifyDateUTC")
    (
        select "hashValue", "effectiveTime", "IsActive", "NewsLetterissueFK", "ListingFK", "ShowcaseSequence", "CreateDateUTC", "ModifyDateUTC"
        from "BJAC_DW_PROD"."stg"."#CC_NewsLetterShowcase_Incr__dbt_tmp"
    );

  