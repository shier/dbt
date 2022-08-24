
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_NavisionCustomerBuffer_Incr" ("hashValue", "effectiveTime", "No", "Name", "Name2", "Address", "Address2", "City", "State", "CountryCode", "PostCode", "Phoneno", "Email", "HomePage", "Status", "StatusMessage", "WrotetoNavision")
    (
        select "hashValue", "effectiveTime", "No", "Name", "Name2", "Address", "Address2", "City", "State", "CountryCode", "PostCode", "Phoneno", "Email", "HomePage", "Status", "StatusMessage", "WrotetoNavision"
        from "BJAC_DW_PROD"."stg"."#Auct_NavisionCustomerBuffer_Incr__dbt_tmp"
    );

  