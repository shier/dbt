
Select
	[ODOMeterReadingID],[CarID],[ReadingTypeID],[Reading],[ReadByContactID],[UpdateEventID],[DateRead],[Created] 
From stg.[Auct_ODOMeterReading_Incr] 
Where [dbt_valid_to] is null