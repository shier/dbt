
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ForeignregionID as varchar), Cast(Foreignregiontier as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ImportedregionMap_Inter]
	)
Select * From hashData
