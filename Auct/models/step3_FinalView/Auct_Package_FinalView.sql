{{ config(materialized='view',schema='stg')}}
Select
	[PackageID],[PackageTypeID],[PackageTypeName],[TrackingNumber],[CustomerAccountID],[DateCreated],[AuctionID],[PackageCarrierID],[Note] 
From stg.[Auct_Package_Incr] 
Where [dbt_valid_to] is null