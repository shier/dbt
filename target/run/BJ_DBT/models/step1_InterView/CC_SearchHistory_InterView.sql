create view "stg"."CC_SearchHistory_InterView__dbt_tmp" as
    
Select
	[SearchHistoryPK] [SearchHistoryPK],
	[PageNumber] [PageNumber],
	[PageSize] [PageSize],
	[UserFK] [UserFK],
	[YearFrom] [YearFrom],
	[YearTo] [Yearto],
	[Distance] [Distance],
	[SearchDateUTC] [SearchDateUTC],
	[VehicleTypeFK] [VehicleTypeFK],
	[Year] [Year],
	[SortAscending] [SortAscending],
	[IncludePrivate] [IncludePrivate],
	[IncludeDealer] [IncludeDealer],
	[IncludeAuction] [IncludeAuction],
	[CausedBackoffToHappen] [CausedBackofftoHAppen],
	[WasExecutedDueToBackoff] [WasExeCutedDuetoBackoff],
	[PriceFrom] [PriceFrom],
	[PriceTo] [Priceto],
	cast([SortTerm] as nvarchar(4000)) [SortTerm],
	cast([DataTokenID] as nvarchar(4000)) [DataTokenID],
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Country] as nvarchar(4000)) [Country],
	cast([State] as nvarchar(4000)) [State],
	cast([ZipCode] as nvarchar(4000)) [ZipCode],
	cast([SearchTerms] as nvarchar(4000)) [SearchTerms]
From stg.[CC_SearchHistory_Raw]