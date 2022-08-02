{{ config(materialized='view',schema='stg')}}
Select
	[PackageCarrierID],[Name],[TrackingURL],[Active] 
From stg.[Auct_PackageCarrier_Incr] 
Where [dbt_valid_to] is null