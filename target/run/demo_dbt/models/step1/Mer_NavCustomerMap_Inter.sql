
  
  if object_id ('"stg"."Mer_NavCustomerMap_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NavCustomerMap_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_NavCustomerMap_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_NavCustomerMap_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_NavCustomerMap_Inter__dbt_tmp_temp_view as
    
Select
	cast([LOCATION] as nvarchar(4000)) [Location],
	cast([CUSTOMER_NO] as nvarchar(4000)) [Customer_No],
	cast([MERCHANT_ID] as nvarchar(4000)) [Merchant_ID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([CUSTOMER_TYPE] as nvarchar(4000)) [Customer_Type],
	cast([SHIP_GL_NO] as nvarchar(4000)) [Ship_Gl_No],
	cast([TAX_STATE] as nvarchar(4000)) [Tax_State],
	cast([TAX_GL_NO] as nvarchar(4000)) [Tax_Gl_No],
	cast([DISCOUNT_GL_NO] as nvarchar(4000)) [Discount_Gl_No],
	[ACTIVE] [Active]
From stg.[Mer_NavCustomerMap_Raw]
    ');

  CREATE TABLE "stg"."Mer_NavCustomerMap_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_NavCustomerMap_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_NavCustomerMap_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NavCustomerMap_Inter__dbt_tmp_temp_view"
    end


