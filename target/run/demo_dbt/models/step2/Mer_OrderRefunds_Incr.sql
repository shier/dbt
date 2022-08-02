
      
  
  if object_id ('"stg"."Mer_OrderRefunds_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_OrderRefunds_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_OrderRefunds_Incr"','U') is not null
    begin
    drop table "stg"."Mer_OrderRefunds_Incr"
    end


   EXEC('create view stg.Mer_OrderRefunds_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([Order_ID], [Customer_No], [Document_No], [Ship_Gl_No], [Tax_State], [Tax_Gl_No], [Discount_Gl_No], [Discount_Type], [Employee], [Terminal], [Payment_Method], [Bill_To_State], [Ship_To_State], [Order_Line_ID], [Merchant_ID], [Refund_ID], [Merchant], [Customer], [SKU], Cast([Is_Revenue] as varchar), Cast([Price] as varchar), Cast([Discount] as varchar), Cast([Tax_Amount] as varchar), Cast([Shipping_Amount] as varchar), Cast([Order_Date] as varchar), Cast([Ship_Date] as varchar), Cast([Refund_Date] as varchar), Cast([Qty] as varchar), Cast([Discount_Percent] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_OrderRefunds_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_OrderRefunds_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_OrderRefunds_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_OrderRefunds_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_OrderRefunds_Incr_temp_view"
    end



  