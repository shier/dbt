{{ config(materialized='view',schema='stg')}}
Select
	[AVAILABLESTYLEID] [AvailableStyleID],
	[CARMODELID] [CarModelID],
	[CARSTYLEID] [CarStyleID],
	cast([ALLOWDROPDOWN] as nvarchar(4000)) [AllowDropDown],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AvailableStyle_Raw]
