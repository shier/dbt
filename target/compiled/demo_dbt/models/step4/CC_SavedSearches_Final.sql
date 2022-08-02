
Select
	[ID],[IsActive],[IncludePrivate],[IncludeDealer],[IncludeAuction],[PriceFrom],[Priceto],[ZipCode],[SearchDescription],[SavedSearchName],[Make],[Model],[Country],[State],[CreateDate],[ModifyDate],[YearFrom],[Yearto],[Distance],[VehicleTypeID],[AlertModeID],[AlertFrequencyID],[UserID] 
From stg.[CC_SavedSearches_Incr] 
Where [dbt_valid_to] is null