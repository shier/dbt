create view "dbo_stg"."Auct_AvailableStyle_InterView__dbt_tmp" as
    
Select
	[AVAILABLESTYLEID] [AvailableStyleID],
	[CARMODELID] [CarModelID],
	[CARSTYLEID] [CarStyleID],
	cast([ALLOWDROPDOWN] as nvarchar(4000)) [AllowDropDown],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AvailableStyle_Raw]
