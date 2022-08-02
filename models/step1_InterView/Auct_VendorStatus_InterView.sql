{{ config(materialized='view',schema='stg')}}
Select
	[VENDORSTATUSID] [VendorStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_VendorStatus_Raw]
