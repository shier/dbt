create view "stg"."Auct_ReservationStatus_InterView__dbt_tmp" as
    
Select
	[RESERVATIONSTATUSID] [ReservationStatusID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_ReservationStatus_Raw]
