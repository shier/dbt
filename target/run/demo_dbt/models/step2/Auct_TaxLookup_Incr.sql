
      
  
  if object_id ('"stg"."Auct_TaxLookup_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaxLookup_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_TaxLookup_Incr"','U') is not null
    begin
    drop table "stg"."Auct_TaxLookup_Incr"
    end


   EXEC('create view stg.Auct_TaxLookup_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(City, StateProvince, County, Cast(ItemTaxTypeID as varchar), Cast(Created as varchar), Cast(TaxRatesID as varchar), Cast(TaxType as varchar), Cast(UpdateEventID as varchar), Cast(TaxLevelID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TaxLookup_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_TaxLookup_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_TaxLookup_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_TaxLookup_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaxLookup_Incr_temp_view"
    end



  