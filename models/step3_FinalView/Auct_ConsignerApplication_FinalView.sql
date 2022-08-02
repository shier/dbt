{{ config(materialized='view',schema='stg')}}
Select
	[ConsignerApplictionID],[AuctionID],[DealerLicenseNumber],[AuctionName],[DateRange],[FullStateName],[Page1Footer] 
From stg.[Auct_ConsignerApplication_Incr] 
Where [dbt_valid_to] is null