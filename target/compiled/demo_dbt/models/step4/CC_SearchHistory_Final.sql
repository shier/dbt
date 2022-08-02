
Select
	[SearchHistoryPK],[IpAddress],[UserAgent],[Make],[Model],[Country],[State],[SortTerm],[DataTokenID],[ZipCode],[SearchTerms],[SortAscending],[IncludePrivate],[IncludeDealer],[IncludeAuction],[CausedBackofftoHAppen],[WasExeCutedDuetoBackoff],[PriceFrom],[Priceto],[Distance],[VehicleTypeFK],[Year],[PageNumber],[PageSize],[UserFK],[YearFrom],[Yearto],[SearchDateUTC] 
From stg.[CC_SearchHistory_Incr] 
Where [dbt_valid_to] is null