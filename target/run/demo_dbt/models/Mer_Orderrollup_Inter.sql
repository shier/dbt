
  
  if object_id ('"stg"."Mer_Orderrollup_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Orderrollup_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Orderrollup_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_Orderrollup_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_Orderrollup_Inter__dbt_tmp_temp_view as
    
Select
	QTY Qty,
	CNT Cnt,
	IN_NAV In_Nav,
	DOCUMENT_TYPE Document_Type,
	IN_NAV_DATE In_Nav_Date,
	PRICE Price,
	SHIP_AMOUNT Ship_Amount,
	TAX_AMOUNT Tax_Amount,
	DISCOUNT DisCount,
	cast(MERCHANT_ID as nvarchar(4000)) Merchant_ID,
	cast(CUSTOMER_NO as nvarchar(4000)) Customer_No,
	cast(SKU as nvarchar(4000)) Sku,
	cast(DATE_NAV as nvarchar(4000)) Date_Nav,
	cast(DOCUMENT_NO as nvarchar(4000)) Document_No,
	cast(SHIP_GL_NO as nvarchar(4000)) Ship_Gl_No,
	cast(TAX_STATE as nvarchar(4000)) Tax_State,
	cast(TAX_GL_NO as nvarchar(4000)) Tax_Gl_No,
	cast(DISCOUNT_GL_NO as nvarchar(4000)) DisCount_Gl_No
From Mer_Orderrollup_Raw
    ');

  CREATE TABLE "stg"."Mer_Orderrollup_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Orderrollup_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_Orderrollup_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Orderrollup_Inter__dbt_tmp_temp_view"
    end


