
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_NavisionSalesHeader_Incr" ("hashValue", "effectiveTime", "DocumentType", "AuctionDocumentno", "SelltoCustomerno", "BilltoCustomerno", "YourReference", "DocumentDate", "PostingDate", "ShipmentDate", "DueDate", "Status", "StatusMessage", "PaymentDate", "Imported", "Jobno", "ExternalDocumentno", "Lotno", "AuctionID", "GlobalDimension1Code", "GlobalDimension2Code", "BusinessUnit", "WrotetoNavision")
    (
        select "hashValue", "effectiveTime", "DocumentType", "AuctionDocumentno", "SelltoCustomerno", "BilltoCustomerno", "YourReference", "DocumentDate", "PostingDate", "ShipmentDate", "DueDate", "Status", "StatusMessage", "PaymentDate", "Imported", "Jobno", "ExternalDocumentno", "Lotno", "AuctionID", "GlobalDimension1Code", "GlobalDimension2Code", "BusinessUnit", "WrotetoNavision"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_NavisionSalesHeader_Incr__dbt_tmp"
    );

  