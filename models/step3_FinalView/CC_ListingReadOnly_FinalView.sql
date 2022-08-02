{{ config(materialized='view',schema='stg')}}
Select
	[ID],[City],[State],[ZipCode],[Make],[Model],[Description],[CompanyName],[SrcsetandFirstURL],[Country],[StockNumber],[ListingStatusID],[CompanyID],[Year],[PriceTypeID],[VehicleTypeID],[CompanyTypeID],[ImageCount],[VideoCount],[CategoryID],[CreateDate],[ModifyDate],[FeaturedUntil],[FeaturedOn],[IsActive],[IsFeaturedListing],[Convertible],[Price],[Latitude],[Longitude] 
From stg.[CC_ListingReadOnly_Incr] 
Where [dbt_valid_to] is null