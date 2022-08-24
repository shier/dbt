{{ config(materialized='view',schema='stg')}}
Select
	[RESERVATIONID] [ReservationID],
	[CHARGEID] [ChargeID]
From stg.[Auct_ReservationCharge_Raw]
