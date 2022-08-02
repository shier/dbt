{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReservationStatusID] as int) [ReservationStatusID],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_ReservationStatus_FinalView]