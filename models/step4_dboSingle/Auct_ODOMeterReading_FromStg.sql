{{ config(materialized='table',schema='dbo')}}
Select
	cast([ODOMeterReadingID] as int) [ODOMeterReadingID],
	cast([CarID] as int) [CarID],
	cast([ReadingTypeID] as int) [ReadingTypeID],
	cast([Reading] as int) [Reading],
	cast([DateRead] as datetime) [DateRead],
	cast([ReadByContactID] as int) [ReadByContactID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ODOMeterReading_FinalView]