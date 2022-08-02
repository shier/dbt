
With hashData as (
		Select
			HASHBYTES('MD5', concat(IpAddress, UserAgent, Make, Model, Country, State, SortTerm, DataTokenID, ZipCode, SearchTerms, Cast(SortAscending as varchar), Cast(IncludePrivate as varchar), Cast(IncludeDealer as varchar), Cast(IncludeAuction as varchar), Cast(CausedBackofftoHAppen as varchar), Cast(WasExeCutedDuetoBackoff as varchar), Cast(PriceFrom as varchar), Cast(Priceto as varchar), Cast(Distance as varchar), Cast(VehicleTypeFK as varchar), Cast(Year as varchar), Cast(PageNumber as varchar), Cast(PageSize as varchar), Cast(UserFK as varchar), Cast(YearFrom as varchar), Cast(Yearto as varchar), Cast(SearchDateUTC as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SearchHistory_Inter]
	)
Select * From hashData
