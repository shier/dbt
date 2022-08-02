
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(NodeTreeTypeID as varchar), Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NodeTree_Inter]
	)
Select * From hashData
