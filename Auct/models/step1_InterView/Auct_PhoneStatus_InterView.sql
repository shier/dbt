{{ config(materialized='view',schema='stg')}}
Select
	[PHONESTATUSID] [PhoneStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_PhoneStatus_Raw]
