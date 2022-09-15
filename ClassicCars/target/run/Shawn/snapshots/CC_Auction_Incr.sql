
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."CC_Auction_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#CC_Auction_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."CC_Auction_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."CC_Auction_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."CC_Auction_Incr" (
                  "ID", "Name", "Description", "Location", "DateInfo", "SiteURL", "ContactURL", "BidderURL", "SellerURL", "ThuMbnailURL", "ImageURL", "WordPressTag", "CreateDate", "ModifyDate", "CompanyID", "IsActive", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "Name", "Description", "Location", "DateInfo", "SiteURL", "ContactURL", "BidderURL", "SellerURL", "ThuMbnailURL", "ImageURL", "WordPressTag", "CreateDate", "ModifyDate", "CompanyID", "IsActive", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#CC_Auction_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  