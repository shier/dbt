create view "stg"."Auct_SpecialVendorType_InterView__dbt_tmp" as
    
Select
	[SPECIALVENDORTYPEID] [SpecialVendorTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SpecialVendorType_Raw]
