
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."Auct_Journal_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#Auct_Journal_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."Auct_Journal_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."Auct_Journal_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."Auct_Journal_Incr" (
                  "JournalID", "AuctionID", "ProjectID", "Ln", "AccountID", "CustomerAccountID", "TimeCreated", "JournalType", "DepositID", "CarConsignmentID", "InvoiceID", "BidderID", "DealerID", "VendorID", "MediaID", "SponsorID", "VendorSpaceID", "InventoryID", "ContactName", "Address", "City", "StateProvince", "PostalCode", "Country", "Phoneac", "Phone", "Description", "PaymentMethod", "CheckNumber", "CreditCardNumber", "CreditCardExp", "Comments", "DateCreated", "CreatedBy", "DateModified", "ModifiedBy", "ServerCreatedBy", "ServerModifiedBy", "Status", "Credit", "Debit", "Rn", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "JournalID", "AuctionID", "ProjectID", "Ln", "AccountID", "CustomerAccountID", "TimeCreated", "JournalType", "DepositID", "CarConsignmentID", "InvoiceID", "BidderID", "DealerID", "VendorID", "MediaID", "SponsorID", "VendorSpaceID", "InventoryID", "ContactName", "Address", "City", "StateProvince", "PostalCode", "Country", "Phoneac", "Phone", "Description", "PaymentMethod", "CheckNumber", "CreditCardNumber", "CreditCardExp", "Comments", "DateCreated", "CreatedBy", "DateModified", "ModifiedBy", "ServerCreatedBy", "ServerModifiedBy", "Status", "Credit", "Debit", "Rn", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#Auct_Journal_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  