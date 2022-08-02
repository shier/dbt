{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as varchar(100)) [ID],
	cast([MerchantID] as varchar(100)) [MerchantID],
	cast([CacheType] as varchar(300)) [CacheType],
	cast([Value] as varchar(128)) [Value] 
From stg.[Mer_Clovercache_FinalView]