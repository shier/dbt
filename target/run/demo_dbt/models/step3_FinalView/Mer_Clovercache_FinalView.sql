create view "stg"."Mer_Clovercache_FinalView__dbt_tmp" as
    
Select
	[ID],[MerchantID],[CacheType],[Value] 
From stg.[Mer_Clovercache_Incr] 
Where [dbt_valid_to] is null
