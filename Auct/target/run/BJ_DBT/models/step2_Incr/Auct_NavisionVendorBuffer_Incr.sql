
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_NavisionVendorBuffer_Incr" ("hashValue", "effectiveTime", "No", "Name", "Name2", "Address", "Address2", "City", "State", "CountryCode", "PostalCode", "Phoneno", "Email", "HomePage", "Taxliable", "FederalIDno", "1099Code", "Status", "StatusMessage", "WrotetoNavision")
    (
        select "hashValue", "effectiveTime", "No", "Name", "Name2", "Address", "Address2", "City", "State", "CountryCode", "PostalCode", "Phoneno", "Email", "HomePage", "Taxliable", "FederalIDno", "1099Code", "Status", "StatusMessage", "WrotetoNavision"
        from "BJAC_DW_PROD"."stg"."#Auct_NavisionVendorBuffer_Incr__dbt_tmp"
    );

  