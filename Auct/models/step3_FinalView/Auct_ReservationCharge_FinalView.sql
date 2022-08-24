{{ config(materialized='view',schema='stg')}}
Select
	[ReservationID],[ChargeID] 
From [Auct_ReservationCharge_Incr]