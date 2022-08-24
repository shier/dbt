
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_BlockedBidderNumbers_Incr" ("hashValue", "effectiveTime", "AuctionID", "AuctionBidderNumber", "Comments", "BlockedByUserID")
    (
        select "hashValue", "effectiveTime", "AuctionID", "AuctionBidderNumber", "Comments", "BlockedByUserID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_BlockedBidderNumbers_Incr__dbt_tmp"
    );

  