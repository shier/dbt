
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsActive as varchar), Name, FullyQualifiedClassName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_DistributionMethods_Inter]
	)
Select * From hashData
