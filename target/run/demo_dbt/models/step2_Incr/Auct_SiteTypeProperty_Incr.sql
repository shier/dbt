
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_SiteTypeProperty_Incr" ("hashValue", "effectiveTime", "DynamicPropertyID", "SiteTypeID", "IsRequired")
    (
        select "hashValue", "effectiveTime", "DynamicPropertyID", "SiteTypeID", "IsRequired"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_SiteTypeProperty_Incr__dbt_tmp"
    );

  