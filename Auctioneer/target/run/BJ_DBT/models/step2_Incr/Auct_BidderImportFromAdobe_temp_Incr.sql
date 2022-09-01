
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_BidderImportFromAdobe_temp_Incr" ("hashValue", "effectiveTime", "Created_Date", "Agreement_Status", "Recipient_1_Name", "Recipient_1_Email", "Recipient_1_Role")
    (
        select "hashValue", "effectiveTime", "Created_Date", "Agreement_Status", "Recipient_1_Name", "Recipient_1_Email", "Recipient_1_Role"
        from "BJAC_DW_PROD"."stg"."#Auct_BidderImportFromAdobe_temp_Incr__dbt_tmp"
    );

  