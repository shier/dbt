
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_TimedLot_Incr" ("hashValue", "effectiveTime", "ConsignmentID", "TargetTime")
    (
        select "hashValue", "effectiveTime", "ConsignmentID", "TargetTime"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_TimedLot_Incr__dbt_tmp"
    );

  