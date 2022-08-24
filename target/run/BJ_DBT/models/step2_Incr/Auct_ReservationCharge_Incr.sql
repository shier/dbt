
      
  

    insert into "BJAC_DW_PROD"."stg"."Auct_ReservationCharge_Incr" ("hashValue", "effectiveTime", "ReservationID", "ChargeID")
    (
        select "hashValue", "effectiveTime", "ReservationID", "ChargeID"
        from "BJAC_DW_PROD"."stg"."#Auct_ReservationCharge_Incr__dbt_tmp"
    );

  