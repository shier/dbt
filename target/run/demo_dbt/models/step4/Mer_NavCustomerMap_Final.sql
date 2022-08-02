
  
  if object_id ('"stg"."Mer_NavCustomerMap_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NavCustomerMap_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_NavCustomerMap_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_NavCustomerMap_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_NavCustomerMap_Final__dbt_tmp_temp_view as
    
Select
	[Location],[Tax_Gl_No],[Discount_Gl_No],[Customer_No],[Merchant_ID],[Name],[Customer_Type],[Ship_Gl_No],[Tax_State],[Active] 
From [Mer_NavCustomerMap_Incr]
    ');

  CREATE TABLE "stg"."Mer_NavCustomerMap_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_NavCustomerMap_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_NavCustomerMap_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NavCustomerMap_Final__dbt_tmp_temp_view"
    end


