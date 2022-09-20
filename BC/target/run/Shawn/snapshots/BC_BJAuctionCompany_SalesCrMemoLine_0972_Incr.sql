
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_SalesCrMemoLine_0972_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_SalesCrMemoLine_0972_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_SalesCrMemoLine_0972_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_SalesCrMemoLine_0972_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_SalesCrMemoLine_0972_Incr" (
                  "systemId", "DocumentNo", "Sell_toCustomerNo", "No", "LocationCode", "ItemReferenceNo", "ItemReferenceUnitofMeasure", "ItemReferenceTypeNo", "systemCreatedBy", "systemModifiedBy", "PackageTrackingNo", "TaxCategory", "DeferralCode", "OrderNo", "ICItemReferenceNo", "ItemCategoryCode", "PurchasingCode", "ProductGroupCode", "ReturnReceiptNo", "ReturnReasonCode", "CustomerDisc_Group", "DepreciationBookCode", "DuplicateinDepreciationBook", "ResponsibilityCenter", "Cross_ReferenceNo", "UnitofMeasureCrossRef", "Cross_ReferenceTypeNo", "ICPartnerReference", "ICPartnerCode", "JobTaskNo", "VariantCode", "BinCode", "UnitofMeasureCode", "TaxGroupCode", "VATClauseCode", "VATBus_PostingGroup", "VATProd_PostingGroup", "BlanketOrderNo", "VATIdentifier", "TransactionType", "TransportMethod", "ExitPoint", "Area", "TransactionSpecification", "TaxAreaCode", "CustomerPriceGroup", "JobNo", "WorkTypeCode", "Bill_toCustomerNo", "Gen_Bus_PostingGroup", "Gen_Prod_PostingGroup", "PostingGroup", "Description", "Description2", "UnitofMeasure", "ShortcutDimension1Code", "ShortcutDimension2Code", "LineNo_S", "Type", "LineDiscountCalculation", "OrderLineNo", "ItemReferenceType", "PriceCalculationMethod", "UseDuplicationList", "Cross_ReferenceType", "Nonstock", "Appl__fromItemEntry", "ReturnReceiptLineNo", "AllowLineDisc", "System_CreatedEntry", "ICPartnerRef_Type", "PrepaymentLine", "DimensionSetID", "JobContractEntryNo", "Depr_untilFAPostingDate", "AllowInvoiceDisc", "Appl__toItemEntry", "VATCalculationType", "AttachedtoLineNo", "TaxLiable", "BlanketOrderLineNo", "ShipmentDate", "PostingDate", "FAPostingDate", "systemCreatedAt", "systemModifiedAt", "timestamp", "Quantity", "UnitPrice", "UnitCostLCY", "VAT", "UnitsperParcel", "UnitVolume", "Inv_DiscountAmount", "VATBaseAmount", "UnitCost", "LineAmount", "LineDiscount", "LineDiscountAmount", "Amount", "AmountIncludingVAT", "GrossWeight", "NetWeight", "VATDifference", "Qty_perUnitofMeasure", "QuantityBase", "Pmt_DiscountAmount", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "systemId", "DocumentNo", "Sell_toCustomerNo", "No", "LocationCode", "ItemReferenceNo", "ItemReferenceUnitofMeasure", "ItemReferenceTypeNo", "systemCreatedBy", "systemModifiedBy", "PackageTrackingNo", "TaxCategory", "DeferralCode", "OrderNo", "ICItemReferenceNo", "ItemCategoryCode", "PurchasingCode", "ProductGroupCode", "ReturnReceiptNo", "ReturnReasonCode", "CustomerDisc_Group", "DepreciationBookCode", "DuplicateinDepreciationBook", "ResponsibilityCenter", "Cross_ReferenceNo", "UnitofMeasureCrossRef", "Cross_ReferenceTypeNo", "ICPartnerReference", "ICPartnerCode", "JobTaskNo", "VariantCode", "BinCode", "UnitofMeasureCode", "TaxGroupCode", "VATClauseCode", "VATBus_PostingGroup", "VATProd_PostingGroup", "BlanketOrderNo", "VATIdentifier", "TransactionType", "TransportMethod", "ExitPoint", "Area", "TransactionSpecification", "TaxAreaCode", "CustomerPriceGroup", "JobNo", "WorkTypeCode", "Bill_toCustomerNo", "Gen_Bus_PostingGroup", "Gen_Prod_PostingGroup", "PostingGroup", "Description", "Description2", "UnitofMeasure", "ShortcutDimension1Code", "ShortcutDimension2Code", "LineNo_S", "Type", "LineDiscountCalculation", "OrderLineNo", "ItemReferenceType", "PriceCalculationMethod", "UseDuplicationList", "Cross_ReferenceType", "Nonstock", "Appl__fromItemEntry", "ReturnReceiptLineNo", "AllowLineDisc", "System_CreatedEntry", "ICPartnerRef_Type", "PrepaymentLine", "DimensionSetID", "JobContractEntryNo", "Depr_untilFAPostingDate", "AllowInvoiceDisc", "Appl__toItemEntry", "VATCalculationType", "AttachedtoLineNo", "TaxLiable", "BlanketOrderLineNo", "ShipmentDate", "PostingDate", "FAPostingDate", "systemCreatedAt", "systemModifiedAt", "timestamp", "Quantity", "UnitPrice", "UnitCostLCY", "VAT", "UnitsperParcel", "UnitVolume", "Inv_DiscountAmount", "VATBaseAmount", "UnitCost", "LineAmount", "LineDiscount", "LineDiscountAmount", "Amount", "AmountIncludingVAT", "GrossWeight", "NetWeight", "VATDifference", "Qty_perUnitofMeasure", "QuantityBase", "Pmt_DiscountAmount", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_SalesCrMemoLine_0972_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  