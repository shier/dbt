{{ config(materialized='view',schema='stg')}}
Select
	[ID],[State],[ZipCode],[SearchDescription],[Dml_Operation],[SavedSearchName],[Make],[Model],[Country],[PriceFrom],[Priceto],[IsActive],[IncludePrivate],[IncludeDealer],[IncludeAuction],[UserID],[YearFrom],[Yearto],[Distance],[VehicleTypeID],[AlertModeID],[AlertFrequencyID],[SavedSearchAuditPK],[AuditentryDateUTC],[CreateDate],[ModifyDate] 
From stg.[CC_SavedSearchesAudit_Incr] 
Where [dbt_valid_to] is null