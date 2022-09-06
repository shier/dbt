
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_AuctionBidderStatus_Incr" ("hashValue", "effectiveTime", "BidderStatusID", "CommissionPercentage", "AutomobiliaCommissionPercentage", "AuctionID", "FeeID", "RangeStart", "RangeEnd")
    (
        select "hashValue", "effectiveTime", "BidderStatusID", "CommissionPercentage", "AutomobiliaCommissionPercentage", "AuctionID", "FeeID", "RangeStart", "RangeEnd"
        from "BJAC_DW_PROD"."stg"."#Auct_AuctionBidderStatus_Incr__dbt_tmp"
    );

  