
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_County_Incr" ("hashValue", "effectiveTime", "StateAbbreviation", "County")
    (
        select "hashValue", "effectiveTime", "StateAbbreviation", "County"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_County_Incr__dbt_tmp"
    );

  