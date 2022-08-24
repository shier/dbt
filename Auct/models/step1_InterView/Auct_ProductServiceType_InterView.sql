{{ config(materialized='view',schema='stg')}}
Select
	[PRODUCTSERVICETYPEID] [ProductServiceTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ProductServiceType_Raw]
