{{ config(materialized='table',schema='dbo')}}
Select
	cast([PackageCarrierID] as int) [PackageCarrierID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([TrackingURL] as nvarchar(4000)) [TrackingURL],
	cast([Active] as bit) [Active] 
From stg.[Auct_PackageCarrier_FinalView]