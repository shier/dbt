{{ config(materialized='view',schema='stg')}}
Select
	[SPECIALVENDORTYPEID] [SpecialVendorTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SpecialVendorType_Raw]
