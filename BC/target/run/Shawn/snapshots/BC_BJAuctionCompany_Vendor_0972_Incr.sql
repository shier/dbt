
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_Vendor_0972_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_Vendor_0972_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_Vendor_0972_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_Vendor_0972_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_Vendor_0972_Incr" (
                  "No", "BudgetedAmount", "Prepayment", "timestamp", "Picture", "LastDateModified", "LastModifiedDateTime", "systemCreatedAt", "systemModifiedAt", "FATCAfilingrequirement", "ValidateEUVatReg_No", "PrivacyBlocked", "DisableSearchbyName", "PriceCalculationMethod", "DIOT_TypeofOperation", "BlockPaymentTolerance", "PartnerType", "BankCommunication", "CheckDateFormat", "CheckDateSeparator", "TaxIdentificationType", "StatisticsGroup", "Blocked", "Priority", "ApplicationMethod", "PricesIncludingVAT", "TaxLiable", "PaymentTermsId", "PaymentMethodId", "systemId", "EORINumber", "MobilePhoneNo", "Over_ReceiptCode", "StateInscription", "GLN", "Image", "DocumentSendingProfile", "Id", "CurrencyId", "BaseCalendarCode", "UPSZone", "FederalIDNo", "IRS1099Code", "RFCNo", "CURPNo", "PreferredBankAccountCode", "CashFlowPaymentTermsCode", "PrimaryContactNo", "ResponsibilityCenter", "LocationCode", "LeadTimeCalculation", "HomePage", "No_Series", "TaxAreaCode", "VATBus_PostingGroup", "ICPartnerCode", "CreditorNo", "TelexAnswerBack", "VATRegistrationNo", "Gen_Bus_PostingGroup", "PostCode", "County", "E_Mail", "ShippingAgentCode", "InvoiceDisc_Code", "Country_RegionCode", "Pay_toVendorNo", "PaymentMethodCode", "FaxNo", "CurrencyCode", "LanguageCode", "PaymentTermsCode", "Fin_ChargeTermsCode", "PurchaserCode", "ShipmentMethodCode", "TelexNo", "OurAccountNo", "TerritoryCode", "GlobalDimension1Code", "GlobalDimension2Code", "VendorPostingGroup", "Name2", "Address", "Address2", "City", "Contact", "PhoneNo", "Name", "SearchName", "systemCreatedBy", "systemModifiedBy", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "No", "BudgetedAmount", "Prepayment", "timestamp", "Picture", "LastDateModified", "LastModifiedDateTime", "systemCreatedAt", "systemModifiedAt", "FATCAfilingrequirement", "ValidateEUVatReg_No", "PrivacyBlocked", "DisableSearchbyName", "PriceCalculationMethod", "DIOT_TypeofOperation", "BlockPaymentTolerance", "PartnerType", "BankCommunication", "CheckDateFormat", "CheckDateSeparator", "TaxIdentificationType", "StatisticsGroup", "Blocked", "Priority", "ApplicationMethod", "PricesIncludingVAT", "TaxLiable", "PaymentTermsId", "PaymentMethodId", "systemId", "EORINumber", "MobilePhoneNo", "Over_ReceiptCode", "StateInscription", "GLN", "Image", "DocumentSendingProfile", "Id", "CurrencyId", "BaseCalendarCode", "UPSZone", "FederalIDNo", "IRS1099Code", "RFCNo", "CURPNo", "PreferredBankAccountCode", "CashFlowPaymentTermsCode", "PrimaryContactNo", "ResponsibilityCenter", "LocationCode", "LeadTimeCalculation", "HomePage", "No_Series", "TaxAreaCode", "VATBus_PostingGroup", "ICPartnerCode", "CreditorNo", "TelexAnswerBack", "VATRegistrationNo", "Gen_Bus_PostingGroup", "PostCode", "County", "E_Mail", "ShippingAgentCode", "InvoiceDisc_Code", "Country_RegionCode", "Pay_toVendorNo", "PaymentMethodCode", "FaxNo", "CurrencyCode", "LanguageCode", "PaymentTermsCode", "Fin_ChargeTermsCode", "PurchaserCode", "ShipmentMethodCode", "TelexNo", "OurAccountNo", "TerritoryCode", "GlobalDimension1Code", "GlobalDimension2Code", "VendorPostingGroup", "Name2", "Address", "Address2", "City", "Contact", "PhoneNo", "Name", "SearchName", "systemCreatedBy", "systemModifiedBy", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_Vendor_0972_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  