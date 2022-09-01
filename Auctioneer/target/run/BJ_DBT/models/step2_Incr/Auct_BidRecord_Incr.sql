
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_BidRecord_Incr" ("hashValue", "effectiveTime", "LotNumber", "AuctionID", "EndingBID", "ChangeTime")
    (
        select "hashValue", "effectiveTime", "LotNumber", "AuctionID", "EndingBID", "ChangeTime"
        from "BJAC_DW_PROD"."stg"."#Auct_BidRecord_Incr__dbt_tmp"
    );

  