
With hashData as (
		Select
			HASHBYTES('MD5', concat(Originator_Db, Cast(Inserted_Date as varchar), Cast(Originator_Db_Version as varchar), Cast(Originator_Version as varchar), Originator_Publication, Originator_Node)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_OriginatorID_Inter]
	)
Select * From hashData
