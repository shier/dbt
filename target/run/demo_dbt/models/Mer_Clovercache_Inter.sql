
  
  if object_id ('"stg"."Mer_Clovercache_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Clovercache_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Clovercache_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_Clovercache_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_Clovercache_Inter__dbt_tmp_temp_view as
    
Select
	cast(MerchantId as nvarchar(4000)) MerchantID,
	cast(CacheType as nvarchar(4000)) CacheType,
	cast(ID as nvarchar(4000)) ID,
	cast(VALUE as nvarchar(4000)) Value
From Mer_Clovercache_Raw
    ');

  CREATE TABLE "stg"."Mer_Clovercache_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Clovercache_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_Clovercache_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Clovercache_Inter__dbt_tmp_temp_view"
    end


