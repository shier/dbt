
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_Collection_Consignment_Incr" ("hashValue", "effectiveTime", "CollectionID", "ConsignmentID", "Active")
    (
        select "hashValue", "effectiveTime", "CollectionID", "ConsignmentID", "Active"
        from "BJAC_DW_PROD"."stg"."#Auct_Collection_Consignment_Incr__dbt_tmp"
    );

  