
      
  
  if object_id ('"stg"."CC_SearchHistory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SearchHistory_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SearchHistory_Incr"','U') is not null
    begin
    drop table "stg"."CC_SearchHistory_Incr"
    end


   EXEC('create view stg.CC_SearchHistory_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(IpAddress, UserAgent, Make, Model, Country, State, SortTerm, DataTokenID, ZipCode, SearchTerms, Cast(SortAscending as varchar), Cast(IncludePrivate as varchar), Cast(IncludeDealer as varchar), Cast(IncludeAuction as varchar), Cast(CausedBackofftoHAppen as varchar), Cast(WasExeCutedDuetoBackoff as varchar), Cast(PriceFrom as varchar), Cast(Priceto as varchar), Cast(Distance as varchar), Cast(VehicleTypeFK as varchar), Cast(Year as varchar), Cast(PageNumber as varchar), Cast(PageSize as varchar), Cast(UserFK as varchar), Cast(YearFrom as varchar), Cast(Yearto as varchar), Cast(SearchDateUTC as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SearchHistory_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_SearchHistory_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SearchHistory_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_SearchHistory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SearchHistory_Incr_temp_view"
    end



  