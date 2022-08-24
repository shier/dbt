create view "stg"."Auct_PhoneType_InterView__dbt_tmp" as
    
Select
	[PHONETYPEID] [PhoneTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_PhoneType_Raw]
