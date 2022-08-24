
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_SiteProperty_Incr" ("hashValue", "effectiveTime", "SiteID", "DynamicPropertyID", "Value")
    (
        select "hashValue", "effectiveTime", "SiteID", "DynamicPropertyID", "Value"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_SiteProperty_Incr__dbt_tmp"
    );

  