
  
  if object_id ('"stg"."Mer_Merchant_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Merchant_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Merchant_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_Merchant_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_Merchant_Inter__dbt_tmp_temp_view as
    
Select
	cast([MerchantId] as nvarchar(4000)) [MerchantID],
	[CreatedDate] [CreatedDate],
	[LastLoadedDate] [LastloadedDate],
	cast([Token] as nvarchar(4000)) [Token],
	cast([Description] as nvarchar(4000)) [Description]
From stg.[Mer_Merchant_Raw]
    ');

  CREATE TABLE "stg"."Mer_Merchant_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Merchant_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_Merchant_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Merchant_Inter__dbt_tmp_temp_view"
    end


