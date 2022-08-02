{{ config(materialized='view',schema='stg')}}
Select
	[SearchHistoryPK],[PageNumber],[PageSize],[UserFK],[YearFrom],[Yearto],[Distance],[SearchDateUTC],[VehicleTypeFK],[Year],[SortAscending],[IncludePrivate],[IncludeDealer],[IncludeAuction],[CausedBackofftoHAppen],[WasExeCutedDuetoBackoff],[PriceFrom],[Priceto],[SortTerm],[DataTokenID],[IpAddress],[UserAgent],[Make],[Model],[Country],[State],[ZipCode],[SearchTerms] 
From stg.[CC_SearchHistory_Incr] 
Where [dbt_valid_to] is null