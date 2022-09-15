
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."Auct_Sale_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#Auct_Sale_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."Auct_Sale_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."Auct_Sale_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."Auct_Sale_Incr" (
                  "SaleID", "CommDollars", "StateTaxDollars", "StateTaxRate", "CountyTaxDollars", "CountyTaxRate", "CityTaxDollars", "HoldWire", "CityTaxRate", "SteveCommDollars", "SteveCommPerc", "AsSiterCommDollars", "AsSiterCommPerc", "Price", "BuyerCommPerc", "BuyerCommDollars", "CommPerc", "BlockSaleID", "ShipDateVerified", "CarrierID", "Comments", "BuyerCustomerAccountID", "SellerCustomerAccountID", "ShiptoAddressID", "ShiptoContactID", "Created", "UpdateEventID", "BillofLading", "BillofLadingText", "BMA", "Legacy", "ShipDate", "Navision", "BuyerdealerID", "SellerAddressID", "SellerDealerID", "AlternateSaleType", "SaleStatusID", "AuctionBidderID", "TaxExemptCode", "ArBitrated", "AdjustmentReason", "AdjustedByUserName", "AdjustmentDate", "CarrierName", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "SaleID", "CommDollars", "StateTaxDollars", "StateTaxRate", "CountyTaxDollars", "CountyTaxRate", "CityTaxDollars", "HoldWire", "CityTaxRate", "SteveCommDollars", "SteveCommPerc", "AsSiterCommDollars", "AsSiterCommPerc", "Price", "BuyerCommPerc", "BuyerCommDollars", "CommPerc", "BlockSaleID", "ShipDateVerified", "CarrierID", "Comments", "BuyerCustomerAccountID", "SellerCustomerAccountID", "ShiptoAddressID", "ShiptoContactID", "Created", "UpdateEventID", "BillofLading", "BillofLadingText", "BMA", "Legacy", "ShipDate", "Navision", "BuyerdealerID", "SellerAddressID", "SellerDealerID", "AlternateSaleType", "SaleStatusID", "AuctionBidderID", "TaxExemptCode", "ArBitrated", "AdjustmentReason", "AdjustedByUserName", "AdjustmentDate", "CarrierName", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#Auct_Sale_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  