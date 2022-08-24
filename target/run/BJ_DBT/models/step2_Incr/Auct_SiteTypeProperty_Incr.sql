
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_SiteTypeProperty_Incr" ("hashValue", "effectiveTime", "DynamicPropertyID", "SiteTypeID", "IsRequired")
    (
        select "hashValue", "effectiveTime", "DynamicPropertyID", "SiteTypeID", "IsRequired"
        from "BJAC_DW_PROD"."stg"."#Auct_SiteTypeProperty_Incr__dbt_tmp"
    );

  