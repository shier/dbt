{{ config(materialized='view',schema='stg')}}
Select
	[AVAILABLETRIMID] [AvailableTrimID],
	[CARTRIMID] [CarTrimID],
	[CARMODELID] [CarModelID],
	cast([ALLOWDROPDOWN] as nvarchar(4000)) [AllowDropDown],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AvailableTrim_Raw]
