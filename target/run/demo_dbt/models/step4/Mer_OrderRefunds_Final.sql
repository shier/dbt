
  
  if object_id ('"stg"."Mer_OrderRefunds_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_OrderRefunds_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_OrderRefunds_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_OrderRefunds_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_OrderRefunds_Final__dbt_tmp_temp_view as
    
Select
	[Ship_To_State],[Customer_No],[Document_No],[Ship_Gl_No],[Tax_State],[Tax_Gl_No],[SKU],[Discount_Type],[Employee],[Terminal],[Payment_Method],[Bill_To_State],[Order_ID],[Order_Line_ID],[Merchant_ID],[Refund_ID],[Merchant],[Customer],[Is_Revenue],[Discount_Gl_No],[Price],[Discount],[Tax_Amount],[Shipping_Amount],[Order_Date],[Ship_Date],[Refund_Date],[Qty],[Discount_Percent] 
From [Mer_OrderRefunds_Incr]
    ');

  CREATE TABLE "stg"."Mer_OrderRefunds_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_OrderRefunds_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_OrderRefunds_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_OrderRefunds_Final__dbt_tmp_temp_view"
    end


