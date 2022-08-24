{{ config(materialized='view',schema='stg')}}
Select
	[REQUESTTYPEID] [RequestTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_RequestType_Raw]
