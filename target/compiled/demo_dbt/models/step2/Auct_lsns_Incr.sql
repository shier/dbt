
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Originator_lsn as varchar), Originator_Publication, Originator, Originator_Db, Cast(Originator_Publication_ID as varchar), Cast(Originator_Db_Version as varchar), Cast(Originator_Version as varchar), Cast(Originator_ID as varchar), Cast(Last_Updated as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_lsns_Inter]
	)
Select * From hashData
