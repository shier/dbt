
      EXEC('
           BEGIN TRANSACTION
           update "DedicatedSQLpoolBJ"."stg"."CC_ListingImage_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "DedicatedSQLpoolBJ"."stg"."#CC_ListingImage_Incr__dbt_tmp" TMP
          where "DedicatedSQLpoolBJ"."stg"."CC_ListingImage_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "DedicatedSQLpoolBJ"."stg"."CC_ListingImage_Incr".dbt_valid_to is null;

            insert into "DedicatedSQLpoolBJ"."stg"."CC_ListingImage_Incr" (
                  "ID", "Hashorig", "Computedsrcset", "URLThuMbnailwIDE", "URLsrcsetretinaxs", "URLsrcsetretinasm", "URLsrcsetretinamd", "URLsrcsetretinalg", "URLsrcsetretinaxl", "URLsrcsetretinaxxl", "URLsrcsetsm", "URLsrcsetmd", "URLsrcsetlg", "URLsrcsetxl", "URLsrcsetxxl", "URLsrcsetretinaxxs", "URLCarouselCompressed", "URLjumboCompressed", "URLThuMbnailCompressed", "URLstandardCompressed", "URLsrcsetxxs", "URLsrcsetxs", "URLorig", "URLstandard", "URLThuMbnail", "URLjumbo", "FullURL", "URLCarousel", "ListingID", "ListingImageTypeID", "Sequence", "CreateDate", "ModifyDate", "IsActive", "LetterBox", "UseCompressedImages", "SrcsetComputed", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "ID", "Hashorig", "Computedsrcset", "URLThuMbnailwIDE", "URLsrcsetretinaxs", "URLsrcsetretinasm", "URLsrcsetretinamd", "URLsrcsetretinalg", "URLsrcsetretinaxl", "URLsrcsetretinaxxl", "URLsrcsetsm", "URLsrcsetmd", "URLsrcsetlg", "URLsrcsetxl", "URLsrcsetxxl", "URLsrcsetretinaxxs", "URLCarouselCompressed", "URLjumboCompressed", "URLThuMbnailCompressed", "URLstandardCompressed", "URLsrcsetxxs", "URLsrcsetxs", "URLorig", "URLstandard", "URLThuMbnail", "URLjumbo", "FullURL", "URLCarousel", "ListingID", "ListingImageTypeID", "Sequence", "CreateDate", "ModifyDate", "IsActive", "LetterBox", "UseCompressedImages", "SrcsetComputed", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "DedicatedSQLpoolBJ"."stg"."#CC_ListingImage_Incr__dbt_tmp" 
            where dbt_change_type = ''insert'' ; 
           COMMIT TRANSACTION;
           ');


  