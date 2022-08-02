{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReservationID] as int) [ReservationID],
	cast([ChargeID] as int) [ChargeID] 
From stg.[Auct_ReservationCharge_FinalView]