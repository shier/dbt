{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreateDate],[ModifyDate],[UserID],[YearFrom],[Yearto],[Distance],[VehicleTypeID],[AlertModeID],[AlertFrequencyID],[IsActive],[IncludePrivate],[IncludeDealer],[IncludeAuction],[Priceto],[SearchDescription],[SavedSearchName],[Make],[Model],[Country],[State],[ZipCode],[PriceFrom] 
From stg.[CC_SavedSearches_Incr] 
Where [dbt_valid_to] is null