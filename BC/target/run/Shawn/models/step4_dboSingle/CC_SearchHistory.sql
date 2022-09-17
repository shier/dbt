
  
  if object_id ('"dbo"."CC_SearchHistory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SearchHistory__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SearchHistory__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SearchHistory__dbt_tmp"
    end


   EXEC('create view dbo.CC_SearchHistory__dbt_tmp_temp_view as
    
Select
	cast([SearchHistoryPK] as int) [SearchHistoryPK],
	cast([PageNumber] as int) [PageNumber],
	cast([PageSize] as int) [PageSize],
	cast([UserFK] as int) [UserFK],
	cast([YearFrom] as int) [YearFrom],
	cast([Yearto] as int) [YearTo],
	cast([Distance] as int) [Distance],
	cast([SearchDateUTC] as datetime2) [SearchDateUTC],
	cast([VehicleTypeFK] as int) [VehicleTypeFK],
	cast([Year] as int) [Year],
	cast([SortAscending] as bit) [SortAscending],
	cast([IncludePrivate] as bit) [IncludePrivate],
	cast([IncludeDealer] as bit) [IncludeDealer],
	cast([IncludeAuction] as bit) [IncludeAuction],
	cast([CausedBackofftoHAppen] as bit) [CausedBackoffToHappen],
	cast([WasExeCutedDuetoBackoff] as bit) [WasExecutedDueToBackoff],
	cast([PriceFrom] as money) [PriceFrom],
	cast([Priceto] as money) [PriceTo],
	cast([SortTerm] as nvarchar(100)) [SortTerm],
	cast([DataTokenID] as uniqueidentifier) [DataTokenID],
	cast([IpAddress] as nvarchar(50)) [IpAddress],
	cast([UserAgent] as nvarchar(500)) [UserAgent],
	cast([Make] as nvarchar(1000)) [Make],
	cast([Model] as nvarchar(1000)) [Model],
	cast([Country] as nvarchar(100)) [Country],
	cast([State] as nvarchar(50)) [State],
	cast([ZipCode] as nvarchar(50)) [ZipCode],
	cast([SearchTerms] as nvarchar(4000)) [SearchTerms] 
From stg.[CC_SearchHistory_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SearchHistory__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SearchHistory__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SearchHistory__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SearchHistory__dbt_tmp_temp_view"
    end


