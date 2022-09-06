
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_ContactConreqAuction_Incr" ("hashValue", "effectiveTime", "ContactID", "AuctionID", "Count")
    (
        select "hashValue", "effectiveTime", "ContactID", "AuctionID", "Count"
        from "BJAC_DW_PROD"."stg"."#Auct_ContactConreqAuction_Incr__dbt_tmp"
    );

  