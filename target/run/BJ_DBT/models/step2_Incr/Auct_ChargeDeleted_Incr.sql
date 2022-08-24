
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_ChargeDeleted_Incr" ("hashValue", "effectiveTime", "ChargeID", "FeeTypeID", "Created", "UpdateEventID", "InvoiceID", "Comments", "IsTaxable", "ConsignmentID", "BidderID", "DealerID", "VendorID", "MediaID", "SponsorID", "UserID", "Amount")
    (
        select "hashValue", "effectiveTime", "ChargeID", "FeeTypeID", "Created", "UpdateEventID", "InvoiceID", "Comments", "IsTaxable", "ConsignmentID", "BidderID", "DealerID", "VendorID", "MediaID", "SponsorID", "UserID", "Amount"
        from "BJAC_DW_PROD"."stg"."#Auct_ChargeDeleted_Incr__dbt_tmp"
    );

  