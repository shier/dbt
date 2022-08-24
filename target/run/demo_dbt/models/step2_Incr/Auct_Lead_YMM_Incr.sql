
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_Lead_YMM_Incr" ("hashValue", "effectiveTime", "Lead_YMM_ID", "UsersID", "Car_Year", "Car_Make", "Car_Model", "Create_Date")
    (
        select "hashValue", "effectiveTime", "Lead_YMM_ID", "UsersID", "Car_Year", "Car_Make", "Car_Model", "Create_Date"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_Lead_YMM_Incr__dbt_tmp"
    );

  