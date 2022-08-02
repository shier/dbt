
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsActive as varchar), Cast(IncludePrivate as varchar), Cast(IncludeDealer as varchar), Cast(IncludeAuction as varchar), Cast(PriceFrom as varchar), Cast(Priceto as varchar), ZipCode, SearchDescription, SavedSearchName, Make, Model, Country, State, Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(YearFrom as varchar), Cast(Yearto as varchar), Cast(Distance as varchar), Cast(VehicleTypeID as varchar), Cast(AlertModeID as varchar), Cast(AlertFrequencyID as varchar), Cast(UserID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SavedSearches_Inter]
	)
Select * From hashData
