
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."CC_AlertEmailauditListing_Incr" ("hashValue", "effectiveTime", "AlertEmailauditListingpk", "AlertEmailauditfk", "ListingID")
    (
        select "hashValue", "effectiveTime", "AlertEmailauditListingpk", "AlertEmailauditfk", "ListingID"
        from "DedicatedSQLpoolBJ"."stg"."#CC_AlertEmailauditListing_Incr__dbt_tmp"
    );

  