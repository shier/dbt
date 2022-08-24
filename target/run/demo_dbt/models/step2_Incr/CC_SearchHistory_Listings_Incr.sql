
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_SearchHistory_Listings_Incr" ("hashValue", "effectiveTime", "SearchHistoryFK", "ListingFK")
    (
        select "hashValue", "effectiveTime", "SearchHistoryFK", "ListingFK"
        from "DedicatedSQLpoolBJ"."stg"."#CC_SearchHistory_Listings_Incr__dbt_tmp"
    );

  