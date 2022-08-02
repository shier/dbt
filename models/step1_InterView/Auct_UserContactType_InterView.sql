{{ config(materialized='view',schema='stg')}}
Select
	[USERCONTACTTYPEID] [UserContactTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_UserContactType_Raw]
