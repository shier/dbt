
      
  
  if object_id ('"stg"."AH_SalesTaxRates_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SalesTaxRates_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_SalesTaxRates_Incr"','U') is not null
    begin
    drop table "stg"."AH_SalesTaxRates_Incr"
    end


   EXEC('create view stg.AH_SalesTaxRates_Incr_temp_view as
    
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_SalesTaxRates_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."AH_SalesTaxRates_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_SalesTaxRates_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_SalesTaxRates_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SalesTaxRates_Incr_temp_view"
    end



  