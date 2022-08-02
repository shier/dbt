
      
  
  if object_id ('"stg"."Mer_OrderRollup_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_OrderRollup_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_OrderRollup_Incr"','U') is not null
    begin
    drop table "stg"."Mer_OrderRollup_Incr"
    end


   EXEC('create view stg.Mer_OrderRollup_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([Qty] as varchar), Cast([Cnt] as varchar), Cast([In_Nav] as varchar), Cast([Document_Type] as varchar), Cast([In_Nav_Date] as varchar), Cast([Price] as varchar), Cast([Ship_Amount] as varchar), Cast([Tax_Amount] as varchar), Cast([Discount] as varchar), [Merchant_ID], [Customer_No], [SKU], [Date_Nav], [Document_No], [Ship_Gl_No], [Tax_State], [Tax_Gl_No], [Discount_Gl_No])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_OrderRollup_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_OrderRollup_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_OrderRollup_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_OrderRollup_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_OrderRollup_Incr_temp_view"
    end



  