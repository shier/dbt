{{ config(materialized='view',schema='stg')}}
Select
	[MEDIATYPEID] [MediaTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MediaType_Raw]
