
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_VendorRef_Incr" ("hashValue", "effectiveTime", "OldVendorID", "NewVendorID", "VendorAuctionID")
    (
        select "hashValue", "effectiveTime", "OldVendorID", "NewVendorID", "VendorAuctionID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_VendorRef_Incr__dbt_tmp"
    );

  