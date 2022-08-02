
  
  if object_id ('"stg"."Mer_OrderRollup_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_OrderRollup_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_OrderRollup_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_OrderRollup_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_OrderRollup_Final__dbt_tmp_temp_view as
    
Select
	[Qty],[Cnt],[In_Nav],[Document_Type],[In_Nav_Date],[Price],[Ship_Amount],[Tax_Amount],[Discount],[Merchant_ID],[Customer_No],[SKU],[Date_Nav],[Document_No],[Ship_Gl_No],[Tax_State],[Tax_Gl_No],[Discount_Gl_No] 
From [Mer_OrderRollup_Incr]
    ');

  CREATE TABLE "stg"."Mer_OrderRollup_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_OrderRollup_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_OrderRollup_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_OrderRollup_Final__dbt_tmp_temp_view"
    end


