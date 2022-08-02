{{ config(materialized='view',schema='stg')}}
Select
	[ID],[MerchantID],[CacheType],[Value] 
From stg.[Mer_Clovercache_Incr] 
Where [dbt_valid_to] is null