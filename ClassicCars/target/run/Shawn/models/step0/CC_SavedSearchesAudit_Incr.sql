
      
  
  if object_id ('"stg"."CC_SavedSearchesAudit_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SavedSearchesAudit_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SavedSearchesAudit_Incr"','U') is not null
    begin
    drop table "stg"."CC_SavedSearchesAudit_Incr"
    end


   EXEC('create view stg.CC_SavedSearchesAudit_Incr_temp_view as
    
With hashData as (
		Select
			*, HASHBYTES(''SHA2_256'', concat([State], [ZipCode], [SearchDescription], [Dml_Operation], [SavedSearchName], [Make], [Model], [Country], Cast([PriceFrom] as varchar), Cast([Priceto] as varchar), Cast([IsActive] as varchar), Cast([IncludePrivate] as varchar), Cast([IncludeDealer] as varchar), Cast([IncludeAuction] as varchar), Cast([ID] as varchar), Cast([UserID] as varchar), Cast([YearFrom] as varchar), Cast([Yearto] as varchar), Cast([Distance] as varchar), Cast([VehicleTypeID] as varchar), Cast([AlertModeID] as varchar), Cast([AlertFrequencyID] as varchar), Cast([SavedSearchAuditPK] as varchar), Cast([AuditentryDateUTC] as varchar), Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_SavedSearchesAudit_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_SavedSearchesAudit_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SavedSearchesAudit_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_SavedSearchesAudit_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SavedSearchesAudit_Incr_temp_view"
    end



  