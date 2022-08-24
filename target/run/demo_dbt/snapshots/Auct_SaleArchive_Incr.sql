
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."Auct_SaleArchive_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#Auct_SaleArchive_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."Auct_SaleArchive_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."Auct_SaleArchive_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."Auct_SaleArchive_Incr" (
                  "SaleArchiveID", "CountyTaxDollars", "CountyTaxRate", "CityTaxDollars", "CityTaxRate", "SteveCommDollars", "SteveCommPerc", "BuyerCommPerc", "BuyerCommDollars", "CommPerc", "CommDollars", "StateTaxDollars", "StateTaxRate", "AsSiterCommDollars", "AsSiterCommPerc", "Price", "SaleID", "BlockSaleID", "ShipDateVerified", "CarrierID", "Comments", "BuyerCustomerAccountID", "SellerCustomerAccountID", "ShiptoAddressID", "ShiptoContactID", "Created", "UpdateEventID", "BillofLading", "BillofLadingText", "BMA", "Legacy", "ShipDate", "Navision", "BuyerdealerID", "SellerAddressID", "SellerDealerID", "AlternateSaleType", "SaleStatusID", "AuctionBidderID", "TaxExemptCode", "ArBitrated", "AdjustmentReason", "AdjustedByUserName", "AdjustmentDate", "CarrierName", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "SaleArchiveID", "CountyTaxDollars", "CountyTaxRate", "CityTaxDollars", "CityTaxRate", "SteveCommDollars", "SteveCommPerc", "BuyerCommPerc", "BuyerCommDollars", "CommPerc", "CommDollars", "StateTaxDollars", "StateTaxRate", "AsSiterCommDollars", "AsSiterCommPerc", "Price", "SaleID", "BlockSaleID", "ShipDateVerified", "CarrierID", "Comments", "BuyerCustomerAccountID", "SellerCustomerAccountID", "ShiptoAddressID", "ShiptoContactID", "Created", "UpdateEventID", "BillofLading", "BillofLadingText", "BMA", "Legacy", "ShipDate", "Navision", "BuyerdealerID", "SellerAddressID", "SellerDealerID", "AlternateSaleType", "SaleStatusID", "AuctionBidderID", "TaxExemptCode", "ArBitrated", "AdjustmentReason", "AdjustedByUserName", "AdjustmentDate", "CarrierName", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#Auct_SaleArchive_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  