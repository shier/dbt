
  
  if object_id ('"stg"."Mer_Orderdetails_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Orderdetails_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Orderdetails_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_Orderdetails_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_Orderdetails_Final__dbt_tmp_temp_view as
    
Select
	[Qty],[Discount_Percent],[Order_Date],[Ship_Date],[Price],[Discount],[Tax_Amount],[Shipping_Amount],[Order_ID],[Is_Revenue],[Ship_To_State],[Ship_Gl_No],[Tax_State],[Tax_Gl_No],[Discount_Gl_No],[Employee],[Terminal],[Payment_Method],[Document_No],[Customer_No],[Bill_To_State],[Merchant_ID],[Merchant],[Customer],[Order_Line_ID],[SKU],[Discount_Type] 
From [Mer_Orderdetails_Incr]
    ');

  CREATE TABLE "stg"."Mer_Orderdetails_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Orderdetails_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_Orderdetails_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Orderdetails_Final__dbt_tmp_temp_view"
    end


