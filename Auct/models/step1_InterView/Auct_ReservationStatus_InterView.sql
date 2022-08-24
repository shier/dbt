{{ config(materialized='view',schema='stg')}}
Select
	[RESERVATIONSTATUSID] [ReservationStatusID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_ReservationStatus_Raw]
