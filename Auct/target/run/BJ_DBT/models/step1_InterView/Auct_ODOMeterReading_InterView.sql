create view "dbo_stg"."Auct_ODOMeterReading_InterView__dbt_tmp" as
    
Select
	[ODOMETERREADINGID] [ODOMeterReadingID],
	[CARID] [CarID],
	[READINGTYPEID] [ReadingTypeID],
	[READING] [Reading],
	[DATEREAD] [DateRead],
	[READBYCONTACTID] [ReadByContactID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ODOMeterReading_Raw]
