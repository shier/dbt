
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_ContentMetaData_Incr" ("hashValue", "effectiveTime", "ContentID", "MetaDataID")
    (
        select "hashValue", "effectiveTime", "ContentID", "MetaDataID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_ContentMetaData_Incr__dbt_tmp"
    );

  