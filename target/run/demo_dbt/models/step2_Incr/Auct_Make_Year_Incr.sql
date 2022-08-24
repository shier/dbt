
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_Make_Year_Incr" ("hashValue", "effectiveTime", "MakeID", "YearID")
    (
        select "hashValue", "effectiveTime", "MakeID", "YearID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_Make_Year_Incr__dbt_tmp"
    );

  