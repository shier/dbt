
  
  if object_id ('"stg"."Mer_NavShopifyTaxglno_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NavShopifyTaxglno_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_NavShopifyTaxglno_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_NavShopifyTaxglno_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_NavShopifyTaxglno_Inter__dbt_tmp_temp_view as
    
Select
	cast([STATE] as nvarchar(4000)) [State],
	cast([MERCHANT_ID] as nvarchar(4000)) [Merchant_ID],
	cast([TAX_GL_NO] as nvarchar(4000)) [Tax_Gl_No]
From stg.[Mer_NavShopifyTaxglno_Raw]
    ');

  CREATE TABLE "stg"."Mer_NavShopifyTaxglno_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_NavShopifyTaxglno_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_NavShopifyTaxglno_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NavShopifyTaxglno_Inter__dbt_tmp_temp_view"
    end


