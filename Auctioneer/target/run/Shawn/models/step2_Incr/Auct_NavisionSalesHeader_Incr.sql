
      
      
      delete from "BJAC_DW_PROD"."stg"."Auct_NavisionSalesHeader_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."stg"."#Auct_NavisionSalesHeader_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."stg"."Auct_NavisionSalesHeader_Incr" ("DocumentType", "AuctionDocumentno", "SelltoCustomerno", "BilltoCustomerno", "YourReference", "DocumentDate", "PostingDate", "ShipmentDate", "DueDate", "Status", "StatusMessage", "PaymentDate", "Imported", "Jobno", "ExternalDocumentno", "Lotno", "AuctionID", "GlobalDimension1Code", "GlobalDimension2Code", "BusinessUnit", "WrotetoNavision", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "DocumentType", "AuctionDocumentno", "SelltoCustomerno", "BilltoCustomerno", "YourReference", "DocumentDate", "PostingDate", "ShipmentDate", "DueDate", "Status", "StatusMessage", "PaymentDate", "Imported", "Jobno", "ExternalDocumentno", "Lotno", "AuctionID", "GlobalDimension1Code", "GlobalDimension2Code", "BusinessUnit", "WrotetoNavision", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."stg"."#Auct_NavisionSalesHeader_Incr__dbt_tmp"
          )


  