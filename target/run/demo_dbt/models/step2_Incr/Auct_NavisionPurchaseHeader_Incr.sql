
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_NavisionPurchaseHeader_Incr" ("hashValue", "effectiveTime", "DocumentType", "AuctionDocumentno", "BuyFromVendorno", "PaytoVendorno", "YourReference", "DocumentDate", "PostingDate", "DueDate", "VendorOrderno", "VendorShipmentno", "VendorInvoiceno", "Vendorcrmemono", "Vendorquoteno", "Status", "StatusMessage", "PaymentDate", "Imported", "Jobno", "Lotno", "AuctionID", "Globaldim1Code", "Globaldim2Code", "BusinessUnit", "WrotetoNavision", "ExpectedReceiptDate")
    (
        select "hashValue", "effectiveTime", "DocumentType", "AuctionDocumentno", "BuyFromVendorno", "PaytoVendorno", "YourReference", "DocumentDate", "PostingDate", "DueDate", "VendorOrderno", "VendorShipmentno", "VendorInvoiceno", "Vendorcrmemono", "Vendorquoteno", "Status", "StatusMessage", "PaymentDate", "Imported", "Jobno", "Lotno", "AuctionID", "Globaldim1Code", "Globaldim2Code", "BusinessUnit", "WrotetoNavision", "ExpectedReceiptDate"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_NavisionPurchaseHeader_Incr__dbt_tmp"
    );

  