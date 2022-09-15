
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."AH_Invoices_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#AH_Invoices_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."AH_Invoices_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."AH_Invoices_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."AH_Invoices_Incr" (
                  "ID", "Paiddttm", "CreatedOn", "UpdatedOn", "DeletedOn", "Createddttm", "Fulfilleddttm", "PropertybagID", "ShippingOptionID", "PayerID", "OwnerID", "AuctionEventID", "SalesTax", "BuyersPremiumPercent", "BuyersPremiumAmount", "ShippingAmount", "SubTotal", "Total", "IsPayerLocked", "Shipped", "IsArchived", "Status", "ShippingLastName", "BillingLastName", "OwnerName", "Shippingdetails", "OwnerCity", "OwnerStateregion", "OwnerzipPostal", "OwnerCountry", "ShippingFirstName", "BillingFirstName", "BillingCity", "BillingStateregion", "BillingzipPostal", "BillingCountry", "OwnerStreet1", "OwnerStreet2", "ShippingCity", "ShippingStateregion", "ShippingzipPostal", "ShippingCountry", "BillingStreet1", "BillingStreet2", "Comments", "LastUpdatedUser", "Currency", "Type", "ShippingStreet1", "ShippingStreet2", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "Paiddttm", "CreatedOn", "UpdatedOn", "DeletedOn", "Createddttm", "Fulfilleddttm", "PropertybagID", "ShippingOptionID", "PayerID", "OwnerID", "AuctionEventID", "SalesTax", "BuyersPremiumPercent", "BuyersPremiumAmount", "ShippingAmount", "SubTotal", "Total", "IsPayerLocked", "Shipped", "IsArchived", "Status", "ShippingLastName", "BillingLastName", "OwnerName", "Shippingdetails", "OwnerCity", "OwnerStateregion", "OwnerzipPostal", "OwnerCountry", "ShippingFirstName", "BillingFirstName", "BillingCity", "BillingStateregion", "BillingzipPostal", "BillingCountry", "OwnerStreet1", "OwnerStreet2", "ShippingCity", "ShippingStateregion", "ShippingzipPostal", "ShippingCountry", "BillingStreet1", "BillingStreet2", "Comments", "LastUpdatedUser", "Currency", "Type", "ShippingStreet1", "ShippingStreet2", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#AH_Invoices_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  