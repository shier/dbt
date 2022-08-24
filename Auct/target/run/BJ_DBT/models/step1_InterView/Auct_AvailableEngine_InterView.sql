create view "dbo_stg"."Auct_AvailableEngine_InterView__dbt_tmp" as
    
Select
	[AVAILABLEENGINEID] [AvailableEngineID],
	[CARMODELID] [CarModelID],
	[CARENGINEID] [CarEngineID],
	cast([ALLOWDROPDOWN] as nvarchar(4000)) [AllowDropDown],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AvailableEngine_Raw]
