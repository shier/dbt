create view "dbo_stg"."Auct_ReservationCharge_InterView__dbt_tmp" as
    
Select
	[RESERVATIONID] [ReservationID],
	[CHARGEID] [ChargeID]
From stg.[Auct_ReservationCharge_Raw]
