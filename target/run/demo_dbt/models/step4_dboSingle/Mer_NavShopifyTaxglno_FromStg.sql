
  
  if object_id ('"dbo"."Mer_NavShopifyTaxglno_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_NavShopifyTaxglno_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_NavShopifyTaxglno_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_NavShopifyTaxglno_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_NavShopifyTaxglno_FromStg__dbt_tmp_temp_view as
    
Select
	cast([State] as nvarchar(4000)) [State],
	cast([Merchant_ID] as nvarchar(4000)) [Merchant_ID],
	cast([Tax_Gl_No] as nvarchar(4000)) [Tax_Gl_No] 
From stg.[Mer_NavShopifyTaxglno_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_NavShopifyTaxglno_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_NavShopifyTaxglno_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_NavShopifyTaxglno_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_NavShopifyTaxglno_FromStg__dbt_tmp_temp_view"
    end


