{{ config(materialized='view',schema='stg')}}
Select
	[PACKAGECARRIERID] [PackageCarrierID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([TRACKINGURL] as nvarchar(4000)) [TrackingURL],
	[ACTIVE] [Active]
From stg.[Auct_PackageCarrier_Raw]
