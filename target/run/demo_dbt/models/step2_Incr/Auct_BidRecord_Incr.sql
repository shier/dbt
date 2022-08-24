
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_BidRecord_Incr" ("hashValue", "effectiveTime", "LotNumber", "AuctionID", "EndingBID", "ChangeTime")
    (
        select "hashValue", "effectiveTime", "LotNumber", "AuctionID", "EndingBID", "ChangeTime"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_BidRecord_Incr__dbt_tmp"
    );

  