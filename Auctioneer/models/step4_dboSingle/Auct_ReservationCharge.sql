{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReservationID] as int) [RESERVATIONID],
	cast([ChargeID] as int) [CHARGEID] 
From stg.[Auct_ReservationCharge_FinalView]