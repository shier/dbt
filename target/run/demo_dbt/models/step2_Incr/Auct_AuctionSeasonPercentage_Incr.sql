
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_AuctionSeasonPercentage_Incr" ("hashValue", "effectiveTime", "CurrentAuctionID", "AuctionID", "Percentage")
    (
        select "hashValue", "effectiveTime", "CurrentAuctionID", "AuctionID", "Percentage"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_AuctionSeasonPercentage_Incr__dbt_tmp"
    );

  