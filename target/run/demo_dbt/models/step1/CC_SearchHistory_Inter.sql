
  
  if object_id ('"stg"."CC_SearchHistory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SearchHistory_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SearchHistory_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SearchHistory_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SearchHistory_Inter__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "stg"."CC_SearchHistory_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SearchHistory_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SearchHistory_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SearchHistory_Inter__dbt_tmp_temp_view"
    end


