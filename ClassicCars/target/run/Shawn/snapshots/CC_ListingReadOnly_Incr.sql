
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."CC_ListingReadOnly_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#CC_ListingReadOnly_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."CC_ListingReadOnly_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."CC_ListingReadOnly_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."CC_ListingReadOnly_Incr" (
                  "ID", "City", "State", "ZipCode", "Make", "Model", "Description", "CompanyName", "SrcsetandFirstURL", "Country", "StockNumber", "ListingStatusID", "CompanyID", "Year", "PriceTypeID", "VehicleTypeID", "CompanyTypeID", "ImageCount", "VideoCount", "CategoryID", "CreateDate", "ModifyDate", "FeaturedUntil", "FeaturedOn", "IsActive", "IsFeaturedListing", "Convertible", "Price", "Latitude", "Longitude", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "City", "State", "ZipCode", "Make", "Model", "Description", "CompanyName", "SrcsetandFirstURL", "Country", "StockNumber", "ListingStatusID", "CompanyID", "Year", "PriceTypeID", "VehicleTypeID", "CompanyTypeID", "ImageCount", "VideoCount", "CategoryID", "CreateDate", "ModifyDate", "FeaturedUntil", "FeaturedOn", "IsActive", "IsFeaturedListing", "Convertible", "Price", "Latitude", "Longitude", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#CC_ListingReadOnly_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  