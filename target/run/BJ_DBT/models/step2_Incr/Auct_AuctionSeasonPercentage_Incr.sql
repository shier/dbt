
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_AuctionSeasonPercentage_Incr" ("hashValue", "effectiveTime", "CurrentAuctionID", "AuctionID", "Percentage")
    (
        select "hashValue", "effectiveTime", "CurrentAuctionID", "AuctionID", "Percentage"
        from "BJAC_DW_PROD"."stg"."#Auct_AuctionSeasonPercentage_Incr__dbt_tmp"
    );

  