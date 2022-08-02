{{ config(materialized='view',schema='stg')}}
Select
	[ADDRESSSTATUSID] [AddressStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AddressStatus_Raw]
