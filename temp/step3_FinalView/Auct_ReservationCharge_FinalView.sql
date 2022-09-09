{{ config(materialized='view',schema='stg')}}
Select
	[ReservationID],[ChargeID] 
From [Auct_ReservationCharge_Incr] 
Where [dbt_valid_to] is null