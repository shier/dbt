
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_SiteProperty_Incr" ("hashValue", "effectiveTime", "SiteID", "DynamicPropertyID", "Value")
    (
        select "hashValue", "effectiveTime", "SiteID", "DynamicPropertyID", "Value"
        from "BJAC_DW_PROD"."stg"."#Auct_SiteProperty_Incr__dbt_tmp"
    );

  