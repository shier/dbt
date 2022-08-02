
With hashData as (
		Select
			HASHBYTES('MD5', XmlText) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BlockCommunication_Inter]
	)
Select * From hashData
