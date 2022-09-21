
Select
	cast([ReservationStatusID] as int) [RESERVATIONSTATUSID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_ReservationStatus_FinalView]