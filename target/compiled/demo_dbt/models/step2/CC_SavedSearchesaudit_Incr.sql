
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuditentryDateUTC as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(SavedSearchAuditPK as varchar), Cast(UserID as varchar), Cast(YearFrom as varchar), Cast(Yearto as varchar), Cast(Distance as varchar), Cast(VehicleTypeID as varchar), Cast(AlertModeID as varchar), Cast(AlertFrequencyID as varchar), Cast(PriceFrom as varchar), Cast(Priceto as varchar), Cast(IsActive as varchar), Cast(IncludePrivate as varchar), Cast(IncludeDealer as varchar), Cast(IncludeAuction as varchar), State, ZipCode, SearchDescription, Dml_Operation, SavedSearchName, Make, Model, Country)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SavedSearchesaudit_Inter]
	)
Select * From hashData
