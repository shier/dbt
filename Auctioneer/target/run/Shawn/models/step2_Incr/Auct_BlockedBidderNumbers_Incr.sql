
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_BlockedBidderNumbers_Incr" ("hashValue", "effectiveTime", "AuctionID", "AuctionBidderNumber", "Comments", "BlockedByUserID")
    (
        select "hashValue", "effectiveTime", "AuctionID", "AuctionBidderNumber", "Comments", "BlockedByUserID"
        from "BJAC_DW_PROD"."stg"."#Auct_BlockedBidderNumbers_Incr__dbt_tmp"
    );

  