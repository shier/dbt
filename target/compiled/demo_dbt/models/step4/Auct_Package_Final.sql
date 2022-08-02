
Select
	[PackageID],[PackageTypeName],[TrackingNumber],[Note],[PackageTypeID],[CustomerAccountID],[AuctionID],[PackageCarrierID],[DateCreated] 
From stg.[Auct_Package_Incr] 
Where [dbt_valid_to] is null