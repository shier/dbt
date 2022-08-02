{{ config(materialized='view',schema='stg')}}
Select
	[AVAILABLEOPTIONSID] [AvailableOptionsID],
	[CAROPTIONID] [CarOptionID],
	[CARMODELID] [CarModelID],
	cast([ALLOWDROPDOWN] as nvarchar(4000)) [AllowDropDown],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AvailableOptions_Raw]
