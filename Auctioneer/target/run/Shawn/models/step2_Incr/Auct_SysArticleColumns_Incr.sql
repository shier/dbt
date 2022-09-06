
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_SysArticleColumns_Incr" ("hashValue", "effectiveTime", "ArtID", "ColID", "Is_udt", "Is_xml", "Is_Max")
    (
        select "hashValue", "effectiveTime", "ArtID", "ColID", "Is_udt", "Is_xml", "Is_Max"
        from "BJAC_DW_PROD"."stg"."#Auct_SysArticleColumns_Incr__dbt_tmp"
    );

  