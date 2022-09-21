
Select
	cast([ODOMeterReadingID] as int) [ODOMETERREADINGID],
	cast([CarID] as int) [CARID],
	cast([ReadingTypeID] as int) [READINGTYPEID],
	cast([Reading] as int) [READING],
	cast([DateRead] as datetime) [DATEREAD],
	cast([ReadByContactID] as int) [READBYCONTACTID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ODOMeterReading_FinalView]