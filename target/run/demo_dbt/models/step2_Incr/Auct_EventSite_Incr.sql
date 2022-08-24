
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_EventSite_Incr" ("hashValue", "effectiveTime", "EventID", "SiteID")
    (
        select "hashValue", "effectiveTime", "EventID", "SiteID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_EventSite_Incr__dbt_tmp"
    );

  