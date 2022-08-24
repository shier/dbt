{{ config(materialized='view',schema='stg')}}
Select
	[VENDORTYPEID] [VendorTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_VendorType_Raw]
