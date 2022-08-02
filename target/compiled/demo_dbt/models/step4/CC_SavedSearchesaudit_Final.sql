
Select
	[ID],[AuditentryDateUTC],[CreateDate],[ModifyDate],[SavedSearchAuditPK],[UserID],[YearFrom],[Yearto],[Distance],[VehicleTypeID],[AlertModeID],[AlertFrequencyID],[PriceFrom],[Priceto],[IsActive],[IncludePrivate],[IncludeDealer],[IncludeAuction],[State],[ZipCode],[SearchDescription],[Dml_Operation],[SavedSearchName],[Make],[Model],[Country] 
From stg.[CC_SavedSearchesaudit_Incr] 
Where [dbt_valid_to] is null