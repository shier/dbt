
      
  
  if object_id ('"stg"."CC_SavedSearchesaudit_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SavedSearchesaudit_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SavedSearchesaudit_Incr"','U') is not null
    begin
    drop table "stg"."CC_SavedSearchesaudit_Incr"
    end


   EXEC('create view stg.CC_SavedSearchesaudit_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(AuditentryDateUTC as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(SavedSearchAuditPK as varchar), Cast(UserID as varchar), Cast(YearFrom as varchar), Cast(Yearto as varchar), Cast(Distance as varchar), Cast(VehicleTypeID as varchar), Cast(AlertModeID as varchar), Cast(AlertFrequencyID as varchar), Cast(PriceFrom as varchar), Cast(Priceto as varchar), Cast(IsActive as varchar), Cast(IncludePrivate as varchar), Cast(IncludeDealer as varchar), Cast(IncludeAuction as varchar), State, ZipCode, SearchDescription, Dml_Operation, SavedSearchName, Make, Model, Country)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SavedSearchesaudit_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_SavedSearchesaudit_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SavedSearchesaudit_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_SavedSearchesaudit_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SavedSearchesaudit_Incr_temp_view"
    end



  