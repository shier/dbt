
With hashData as (
		Select
			HASHBYTES('MD5', concat(MerchantID, CacheType, Value)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Clovercache_Inter]
	)
Select * From hashData
