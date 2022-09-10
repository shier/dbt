
      
      
      delete from "BJAC_DW_PROD"."stg"."Auct_NavisionPurchaseHeader_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."stg"."#Auct_NavisionPurchaseHeader_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."stg"."Auct_NavisionPurchaseHeader_Incr" ("DocumentType", "AuctionDocumentno", "BuyFromVendorno", "PaytoVendorno", "YourReference", "DocumentDate", "PostingDate", "DueDate", "VendorOrderno", "VendorShipmentno", "VendorInvoiceno", "Vendorcrmemono", "Vendorquoteno", "Status", "StatusMessage", "PaymentDate", "Imported", "Jobno", "Lotno", "AuctionID", "Globaldim1Code", "Globaldim2Code", "BusinessUnit", "WrotetoNavision", "ExpectedReceiptDate", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "DocumentType", "AuctionDocumentno", "BuyFromVendorno", "PaytoVendorno", "YourReference", "DocumentDate", "PostingDate", "DueDate", "VendorOrderno", "VendorShipmentno", "VendorInvoiceno", "Vendorcrmemono", "Vendorquoteno", "Status", "StatusMessage", "PaymentDate", "Imported", "Jobno", "Lotno", "AuctionID", "Globaldim1Code", "Globaldim2Code", "BusinessUnit", "WrotetoNavision", "ExpectedReceiptDate", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."stg"."#Auct_NavisionPurchaseHeader_Incr__dbt_tmp"
          )


  