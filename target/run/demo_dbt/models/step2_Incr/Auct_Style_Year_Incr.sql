
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_Style_Year_Incr" ("hashValue", "effectiveTime", "StyleID", "YearID")
    (
        select "hashValue", "effectiveTime", "StyleID", "YearID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_Style_Year_Incr__dbt_tmp"
    );

  