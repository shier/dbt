
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."Auct_SponsorAuction_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#Auct_SponsorAuction_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."Auct_SponsorAuction_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."Auct_SponsorAuction_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."Auct_SponsorAuction_Incr" (
                  "SponsorAuctionID", "MagadValue", "Sponsorcost", "BannerAMT", "SponsorID", "AuctionID", "LogoonsTage", "WebLink", "VendorAuctionID", "Created", "UpdateEventID", "ContractSigned", "ContractStart", "ContractEnd", "BannerSize", "CataLogind", "CataLogSize", "WebLinkText", "Comments", "RVINd", "VendorSpaceind", "SkyBoxind", "RvSpaceText", "CataLogText", "VendorSpaceText", "SkyBoxText", "Magissue1", "Magissue2", "Magissue3", "Magissue4", "LogoReceived", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "SponsorAuctionID", "MagadValue", "Sponsorcost", "BannerAMT", "SponsorID", "AuctionID", "LogoonsTage", "WebLink", "VendorAuctionID", "Created", "UpdateEventID", "ContractSigned", "ContractStart", "ContractEnd", "BannerSize", "CataLogind", "CataLogSize", "WebLinkText", "Comments", "RVINd", "VendorSpaceind", "SkyBoxind", "RvSpaceText", "CataLogText", "VendorSpaceText", "SkyBoxText", "Magissue1", "Magissue2", "Magissue3", "Magissue4", "LogoReceived", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#Auct_SponsorAuction_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  