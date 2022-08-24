
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_EventSite_Incr" ("hashValue", "effectiveTime", "EventID", "SiteID")
    (
        select "hashValue", "effectiveTime", "EventID", "SiteID"
        from "BJAC_DW_PROD"."stg"."#Auct_EventSite_Incr__dbt_tmp"
    );

  