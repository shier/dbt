
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_ReservationCharge_Incr" ("hashValue", "effectiveTime", "ReservationID", "ChargeID")
    (
        select "hashValue", "effectiveTime", "ReservationID", "ChargeID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_ReservationCharge_Incr__dbt_tmp"
    );

  