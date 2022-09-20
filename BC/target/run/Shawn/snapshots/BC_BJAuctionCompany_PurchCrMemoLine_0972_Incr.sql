
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_PurchCrMemoLine_0972_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_PurchCrMemoLine_0972_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_PurchCrMemoLine_0972_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_PurchCrMemoLine_0972_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_PurchCrMemoLine_0972_Incr" (
                  "systemId", "DocumentNo", "Buy_fromVendorNo", "No", "LocationCode", "timestamp", "ICItemReferenceNo", "ItemReferenceNo", "ItemReferenceUnitofMeasure", "ItemReferenceTypeNo", "systemCreatedBy", "systemModifiedBy", "JobCurrencyCode", "ReturnShipmentNo", "ProvincialTaxAreaCode", "DeferralCode", "OrderNo", "PurchasingCode", "ProductGroupCode", "ReturnReasonCode", "Pay_toVendorNo", "ICPartnerCode", "JobTaskNo", "DuplicateinDepreciationBook", "ResponsibilityCenter", "Cross_ReferenceNo", "UnitofMeasureCrossRef", "Cross_ReferenceTypeNo", "ItemCategoryCode", "BinCode", "UnitofMeasureCode", "DepreciationBookCode", "MaintenanceCode", "InsuranceNo", "BudgetedFANo", "VATProd_PostingGroup", "BlanketOrderNo", "VATIdentifier", "ICPartnerReference", "Prod_OrderNo", "VariantCode", "EntryPoint", "Area", "TransactionSpecification", "TaxAreaCode", "TaxGroupCode", "VATBus_PostingGroup", "JobNo", "VendorItemNo", "Gen_Bus_PostingGroup", "Gen_Prod_PostingGroup", "TransactionType", "TransportMethod", "PostingGroup", "Description", "Description2", "UnitofMeasure", "ShortcutDimension1Code", "ShortcutDimension2Code", "LineNo_S", "Type", "AllowInvoiceDisc", "Appl__toItemEntry", "VATCalculationType", "ItemReferenceType", "PriceCalculationMethod", "IRS1099Liable", "PrepaymentLine", "DimensionSetID", "JobLineType", "ReturnShipmentLineNo", "OrderLineNo", "FAPostingType", "Depr_untilFAPostingDate", "Depr_AcquisitionCost", "UseDuplicationList", "Cross_ReferenceType", "Nonstock", "AttachedtoLineNo", "TaxLiable", "UseTax", "BlanketOrderLineNo", "System_CreatedEntry", "ICPartnerRef_Type", "ExpectedReceiptDate", "FAPostingDate", "PostingDate", "systemCreatedAt", "systemModifiedAt", "Quantity", "DirectUnitCost", "UnitCostLCY", "VAT", "LineDiscount", "JobLineAmountLCY", "JobLineDisc_AmountLCY", "JobCurrencyFactor", "Pmt_DiscountAmount", "JobTotalPrice", "JobLineAmount", "JobLineDiscountAmount", "JobLineDiscount", "JobUnitPriceLCY", "JobTotalPriceLCY", "LineAmount", "VATDifference", "Qty_perUnitofMeasure", "QuantityBase", "SalvageValue", "JobUnitPrice", "UnitsperParcel", "UnitVolume", "IndirectCost", "Inv_DiscountAmount", "VATBaseAmount", "UnitCost", "LineDiscountAmount", "Amount", "AmountIncludingVAT", "UnitPriceLCY", "GrossWeight", "NetWeight", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "systemId", "DocumentNo", "Buy_fromVendorNo", "No", "LocationCode", "timestamp", "ICItemReferenceNo", "ItemReferenceNo", "ItemReferenceUnitofMeasure", "ItemReferenceTypeNo", "systemCreatedBy", "systemModifiedBy", "JobCurrencyCode", "ReturnShipmentNo", "ProvincialTaxAreaCode", "DeferralCode", "OrderNo", "PurchasingCode", "ProductGroupCode", "ReturnReasonCode", "Pay_toVendorNo", "ICPartnerCode", "JobTaskNo", "DuplicateinDepreciationBook", "ResponsibilityCenter", "Cross_ReferenceNo", "UnitofMeasureCrossRef", "Cross_ReferenceTypeNo", "ItemCategoryCode", "BinCode", "UnitofMeasureCode", "DepreciationBookCode", "MaintenanceCode", "InsuranceNo", "BudgetedFANo", "VATProd_PostingGroup", "BlanketOrderNo", "VATIdentifier", "ICPartnerReference", "Prod_OrderNo", "VariantCode", "EntryPoint", "Area", "TransactionSpecification", "TaxAreaCode", "TaxGroupCode", "VATBus_PostingGroup", "JobNo", "VendorItemNo", "Gen_Bus_PostingGroup", "Gen_Prod_PostingGroup", "TransactionType", "TransportMethod", "PostingGroup", "Description", "Description2", "UnitofMeasure", "ShortcutDimension1Code", "ShortcutDimension2Code", "LineNo_S", "Type", "AllowInvoiceDisc", "Appl__toItemEntry", "VATCalculationType", "ItemReferenceType", "PriceCalculationMethod", "IRS1099Liable", "PrepaymentLine", "DimensionSetID", "JobLineType", "ReturnShipmentLineNo", "OrderLineNo", "FAPostingType", "Depr_untilFAPostingDate", "Depr_AcquisitionCost", "UseDuplicationList", "Cross_ReferenceType", "Nonstock", "AttachedtoLineNo", "TaxLiable", "UseTax", "BlanketOrderLineNo", "System_CreatedEntry", "ICPartnerRef_Type", "ExpectedReceiptDate", "FAPostingDate", "PostingDate", "systemCreatedAt", "systemModifiedAt", "Quantity", "DirectUnitCost", "UnitCostLCY", "VAT", "LineDiscount", "JobLineAmountLCY", "JobLineDisc_AmountLCY", "JobCurrencyFactor", "Pmt_DiscountAmount", "JobTotalPrice", "JobLineAmount", "JobLineDiscountAmount", "JobLineDiscount", "JobUnitPriceLCY", "JobTotalPriceLCY", "LineAmount", "VATDifference", "Qty_perUnitofMeasure", "QuantityBase", "SalvageValue", "JobUnitPrice", "UnitsperParcel", "UnitVolume", "IndirectCost", "Inv_DiscountAmount", "VATBaseAmount", "UnitCost", "LineDiscountAmount", "Amount", "AmountIncludingVAT", "UnitPriceLCY", "GrossWeight", "NetWeight", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_PurchCrMemoLine_0972_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  