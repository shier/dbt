
      
  
  if object_id ('"stg"."Mer_NavShopifyTaxglno_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NavShopifyTaxglno_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_NavShopifyTaxglno_Incr"','U') is not null
    begin
    drop table "stg"."Mer_NavShopifyTaxglno_Incr"
    end


   EXEC('create view stg.Mer_NavShopifyTaxglno_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Merchant_ID, Tax_Gl_No)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_NavShopifyTaxglno_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_NavShopifyTaxglno_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_NavShopifyTaxglno_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_NavShopifyTaxglno_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NavShopifyTaxglno_Incr_temp_view"
    end



  