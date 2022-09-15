
      
      
      delete from "BJAC_DW_PROD"."stg"."CC_ListingImage_Incr"
          where (
                dbt_scd_id) in (
      select (dbt_scd_id)
      from "BJAC_DW_PROD"."stg"."#CC_ListingImage_Incr__dbt_tmp"
          );

      
      

      insert into "BJAC_DW_PROD"."stg"."CC_ListingImage_Incr" ("ID", "Hashorig", "Computedsrcset", "URLThuMbnailwIDE", "URLsrcsetretinaxs", "URLsrcsetretinasm", "URLsrcsetretinamd", "URLsrcsetretinalg", "URLsrcsetretinaxl", "URLsrcsetretinaxxl", "URLsrcsetsm", "URLsrcsetmd", "URLsrcsetlg", "URLsrcsetxl", "URLsrcsetxxl", "URLsrcsetretinaxxs", "URLCarouselCompressed", "URLjumboCompressed", "URLThuMbnailCompressed", "URLstandardCompressed", "URLsrcsetxxs", "URLsrcsetxs", "URLorig", "URLstandard", "URLThuMbnail", "URLjumbo", "FullURL", "URLCarousel", "ListingID", "ListingImageTypeID", "Sequence", "CreateDate", "ModifyDate", "IsActive", "LetterBox", "UseCompressedImages", "SrcsetComputed", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to")
          (
      select "ID", "Hashorig", "Computedsrcset", "URLThuMbnailwIDE", "URLsrcsetretinaxs", "URLsrcsetretinasm", "URLsrcsetretinamd", "URLsrcsetretinalg", "URLsrcsetretinaxl", "URLsrcsetretinaxxl", "URLsrcsetsm", "URLsrcsetmd", "URLsrcsetlg", "URLsrcsetxl", "URLsrcsetxxl", "URLsrcsetretinaxxs", "URLCarouselCompressed", "URLjumboCompressed", "URLThuMbnailCompressed", "URLstandardCompressed", "URLsrcsetxxs", "URLsrcsetxs", "URLorig", "URLstandard", "URLThuMbnail", "URLjumbo", "FullURL", "URLCarousel", "ListingID", "ListingImageTypeID", "Sequence", "CreateDate", "ModifyDate", "IsActive", "LetterBox", "UseCompressedImages", "SrcsetComputed", "dbt_scd_id", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to"
      from "BJAC_DW_PROD"."stg"."#CC_ListingImage_Incr__dbt_tmp"
          )


  