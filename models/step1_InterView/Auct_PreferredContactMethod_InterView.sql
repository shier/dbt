{{ config(materialized='view',schema='stg')}}
Select
	[PREFERREDCONTACTMETHODID] [PreferredContactMethodID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_PreferredContactMethod_Raw]
