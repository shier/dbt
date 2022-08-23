
      
  
  if object_id ('"stg"."Mer_NavCustomerMap_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NavCustomerMap_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_NavCustomerMap_Incr"','U') is not null
    begin
    drop table "stg"."Mer_NavCustomerMap_Incr"
    end


   EXEC('create view stg.Mer_NavCustomerMap_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([Location], [Customer_No], [Merchant_ID], [Name], [Customer_Type], [Ship_Gl_No], [Tax_State], [Tax_Gl_No], [Discount_Gl_No], Cast([Active] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_NavCustomerMap_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_NavCustomerMap_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_NavCustomerMap_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_NavCustomerMap_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NavCustomerMap_Incr_temp_view"
    end



  