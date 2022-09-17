{{ config(materialized='table',schema='dbo')}}
Select
	cast([PackageCarrierID] as int) [PACKAGECARRIERID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([TrackingURL] as nvarchar(4000)) [TRACKINGURL],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_PackageCarrier_FinalView]