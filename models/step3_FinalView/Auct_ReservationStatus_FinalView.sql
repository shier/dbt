{{ config(materialized='view',schema='stg')}}
Select
	[ReservationStatusID],[Name] 
From stg.[Auct_ReservationStatus_Incr] 
Where [dbt_valid_to] is null