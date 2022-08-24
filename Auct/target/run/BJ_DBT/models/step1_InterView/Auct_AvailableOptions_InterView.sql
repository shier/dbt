create view "stg"."Auct_AvailableOptions_InterView__dbt_tmp" as
    
Select
	[AVAILABLEOPTIONSID] [AvailableOptionsID],
	[CAROPTIONID] [CarOptionID],
	[CARMODELID] [CarModelID],
	cast([ALLOWDROPDOWN] as nvarchar(4000)) [AllowDropDown],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AvailableOptions_Raw]
