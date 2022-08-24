
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_Model_Year_Incr" ("hashValue", "effectiveTime", "ModelID", "YearID")
    (
        select "hashValue", "effectiveTime", "ModelID", "YearID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_Model_Year_Incr__dbt_tmp"
    );

  