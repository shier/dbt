
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."Auct_SaleArchive_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#Auct_SaleArchive_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."Auct_SaleArchive_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."Auct_SaleArchive_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."Auct_SaleArchive_Incr" (
                  "SaleArchiveID", "CountyTaxDollars", "CountyTaxRate", "CityTaxDollars", "CityTaxRate", "SteveCommDollars", "SteveCommPerc", "BuyerCommPerc", "BuyerCommDollars", "CommPerc", "CommDollars", "StateTaxDollars", "StateTaxRate", "AsSiterCommDollars", "AsSiterCommPerc", "Price", "SaleID", "BlockSaleID", "ShipDateVerified", "CarrierID", "Comments", "BuyerCustomerAccountID", "SellerCustomerAccountID", "ShiptoAddressID", "ShiptoContactID", "Created", "UpdateEventID", "BillofLading", "BillofLadingText", "BMA", "Legacy", "ShipDate", "Navision", "BuyerdealerID", "SellerAddressID", "SellerDealerID", "AlternateSaleType", "SaleStatusID", "AuctionBidderID", "TaxExemptCode", "ArBitrated", "AdjustmentReason", "AdjustedByUserName", "AdjustmentDate", "CarrierName", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "SaleArchiveID", "CountyTaxDollars", "CountyTaxRate", "CityTaxDollars", "CityTaxRate", "SteveCommDollars", "SteveCommPerc", "BuyerCommPerc", "BuyerCommDollars", "CommPerc", "CommDollars", "StateTaxDollars", "StateTaxRate", "AsSiterCommDollars", "AsSiterCommPerc", "Price", "SaleID", "BlockSaleID", "ShipDateVerified", "CarrierID", "Comments", "BuyerCustomerAccountID", "SellerCustomerAccountID", "ShiptoAddressID", "ShiptoContactID", "Created", "UpdateEventID", "BillofLading", "BillofLadingText", "BMA", "Legacy", "ShipDate", "Navision", "BuyerdealerID", "SellerAddressID", "SellerDealerID", "AlternateSaleType", "SaleStatusID", "AuctionBidderID", "TaxExemptCode", "ArBitrated", "AdjustmentReason", "AdjustedByUserName", "AdjustmentDate", "CarrierName", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#Auct_SaleArchive_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  