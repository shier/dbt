
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972_Incr" (
                  "No", "Amount", "AmountIncludingVAT", "InvoiceDiscountValue", "InvoiceDiscountAmount", "TotalTaxAmount", "SubtotalAmount", "timestamp", "PostingDate", "DueDate", "DocumentDate", "LastModifiedDateTime", "systemCreatedAt", "systemModifiedAt", "Posted", "DocumentType", "DiscountAppliedBeforeTax", "IsTest", "PricesIncludingVAT", "TaxLiable", "InvoiceDiscountCalculation", "LastEmailSentStatus", "Cust_LedgerEntryNo", "Status", "Bill_toCounty", "Bill_toCountry_RegionCode", "Ship_toPostCode", "Ship_toCounty", "Ship_toCountry_RegionCode", "Sell_toPhoneNo", "Ship_toName", "Ship_toAddress", "Ship_toAddress2", "Ship_toCity", "Ship_toContact", "Bill_toPostCode", "Bill_toName", "Bill_toAddress", "Bill_toAddress2", "Bill_toCity", "Bill_toContact", "Ship_toCode", "ContactGraphId", "CurrencyId", "PaymentTermsId", "ShipmentMethodId", "TaxAreaID", "Bill_toCustomerNo", "TaxAreaCode", "VATBus_PostingGroup", "Sell_toContactNo", "Id", "CustomerId", "OrderId", "Sell_toCity", "Sell_toContact", "Sell_toPostCode", "Sell_toCounty", "Sell_toCountry_RegionCode", "ExternalDocumentNo", "SalespersonCode", "OrderNo", "VATRegistrationNo", "Sell_toCustomerName", "Sell_toAddress", "Sell_toAddress2", "Sell_toCustomerNo", "YourReference", "PaymentTermsCode", "ShipmentMethodCode", "CustomerPostingGroup", "CurrencyCode", "Sell_toE_Mail", "Bill_toCustomerId", "systemId", "systemCreatedBy", "systemModifiedBy", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "No", "Amount", "AmountIncludingVAT", "InvoiceDiscountValue", "InvoiceDiscountAmount", "TotalTaxAmount", "SubtotalAmount", "timestamp", "PostingDate", "DueDate", "DocumentDate", "LastModifiedDateTime", "systemCreatedAt", "systemModifiedAt", "Posted", "DocumentType", "DiscountAppliedBeforeTax", "IsTest", "PricesIncludingVAT", "TaxLiable", "InvoiceDiscountCalculation", "LastEmailSentStatus", "Cust_LedgerEntryNo", "Status", "Bill_toCounty", "Bill_toCountry_RegionCode", "Ship_toPostCode", "Ship_toCounty", "Ship_toCountry_RegionCode", "Sell_toPhoneNo", "Ship_toName", "Ship_toAddress", "Ship_toAddress2", "Ship_toCity", "Ship_toContact", "Bill_toPostCode", "Bill_toName", "Bill_toAddress", "Bill_toAddress2", "Bill_toCity", "Bill_toContact", "Ship_toCode", "ContactGraphId", "CurrencyId", "PaymentTermsId", "ShipmentMethodId", "TaxAreaID", "Bill_toCustomerNo", "TaxAreaCode", "VATBus_PostingGroup", "Sell_toContactNo", "Id", "CustomerId", "OrderId", "Sell_toCity", "Sell_toContact", "Sell_toPostCode", "Sell_toCounty", "Sell_toCountry_RegionCode", "ExternalDocumentNo", "SalespersonCode", "OrderNo", "VATRegistrationNo", "Sell_toCustomerName", "Sell_toAddress", "Sell_toAddress2", "Sell_toCustomerNo", "YourReference", "PaymentTermsCode", "ShipmentMethodCode", "CustomerPostingGroup", "CurrencyCode", "Sell_toE_Mail", "Bill_toCustomerId", "systemId", "systemCreatedBy", "systemModifiedBy", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_SalesInvoiceEntityAggregate_0972_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  