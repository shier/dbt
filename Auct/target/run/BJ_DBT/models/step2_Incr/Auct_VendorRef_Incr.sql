
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_VendorRef_Incr" ("hashValue", "effectiveTime", "OldVendorID", "NewVendorID", "VendorAuctionID")
    (
        select "hashValue", "effectiveTime", "OldVendorID", "NewVendorID", "VendorAuctionID"
        from "BJAC_DW_PROD"."stg"."#Auct_VendorRef_Incr__dbt_tmp"
    );

  