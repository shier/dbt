
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_StateProvince_Incr" ("hashValue", "effectiveTime", "Abbreviation", "FullName", "CountryID", "Active")
    (
        select "hashValue", "effectiveTime", "Abbreviation", "FullName", "CountryID", "Active"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_StateProvince_Incr__dbt_tmp"
    );

  