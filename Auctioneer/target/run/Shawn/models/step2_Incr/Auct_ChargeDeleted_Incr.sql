
      
  
    delete from "BJAC_DW_PROD"."stg"."Auct_ChargeDeleted_Incr"
    where (dbt_scd_id) in (
        select (dbt_scd_id)
        from "BJAC_DW_PROD"."stg"."#Auct_ChargeDeleted_Incr__dbt_tmp"
    );
    

    insert into "BJAC_DW_PROD"."stg"."Auct_ChargeDeleted_Incr" ("ChargeID", "FeeTypeID", "Created", "UpdateEventID", "InvoiceID", "Comments", "IsTaxable", "ConsignmentID", "BidderID", "DealerID", "VendorID", "MediaID", "SponsorID", "UserID", "Amount", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
    (
        select "ChargeID", "FeeTypeID", "Created", "UpdateEventID", "InvoiceID", "Comments", "IsTaxable", "ConsignmentID", "BidderID", "DealerID", "VendorID", "MediaID", "SponsorID", "UserID", "Amount", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
        from "BJAC_DW_PROD"."stg"."#Auct_ChargeDeleted_Incr__dbt_tmp"
    );

  