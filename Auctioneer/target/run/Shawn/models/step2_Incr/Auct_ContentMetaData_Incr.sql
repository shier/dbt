
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_ContentMetaData_Incr" ("hashValue", "effectiveTime", "ContentID", "MetaDataID")
    (
        select "hashValue", "effectiveTime", "ContentID", "MetaDataID"
        from "BJAC_DW_PROD"."stg"."#Auct_ContentMetaData_Incr__dbt_tmp"
    );

  