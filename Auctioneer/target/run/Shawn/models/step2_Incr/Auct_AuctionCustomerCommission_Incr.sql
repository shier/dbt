
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_AuctionCustomerCommission_Incr" ("hashValue", "effectiveTime", "CustomerAccountID", "SellerComission", "BuyerComission", "MinSellerCharge", "MinBuyerCharge", "AuctionID", "ItemTypeID")
    (
        select "hashValue", "effectiveTime", "CustomerAccountID", "SellerComission", "BuyerComission", "MinSellerCharge", "MinBuyerCharge", "AuctionID", "ItemTypeID"
        from "BJAC_DW_PROD"."stg"."#Auct_AuctionCustomerCommission_Incr__dbt_tmp"
    );

  