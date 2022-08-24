{{ config(materialized='view',schema='stg')}}
Select
	[AVAILABLEMODELID] [AvailableModelID],
	[CARMODELID] [CarModelID],
	[CARMAKEID] [CarMakeID],
	cast([ALLOWDROPDOWN] as nvarchar(4000)) [AllowDropDown],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AvailableModel_Raw]
