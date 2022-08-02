
Select
	[ID],[CreateDate],[ModifyDate],[FeaturedUntil],[FeaturedOn],[IsActive],[IsFeaturedListing],[Convertible],[ListingStatusID],[CompanyID],[Year],[PriceTypeID],[VehicleTypeID],[Latitude],[Longitude],[CompanyTypeID],[ImageCount],[VideoCount],[CategoryID],[Price],[City],[State],[ZipCode],[StockNumber],[Make],[Model],[Description],[CompanyName],[SrcsetandFirstURL],[Country] 
From stg.[CC_ListingReadOnly_Incr] 
Where [dbt_valid_to] is null