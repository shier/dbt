create view "stg"."Auct_ReservationCharge_FinalView__dbt_tmp" as
    
Select
	[ReservationID],[ChargeID] 
From [Auct_ReservationCharge_Incr]
