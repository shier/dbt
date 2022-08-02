
With hashData as (
		Select
			HASHBYTES('MD5', concat(Description, Dest_OBJect, Name, Dest_Owner, Creation_Script, Cast(Status as varchar), Cast(Type as varchar), Cast(OBJID as varchar), Cast(PubID as varchar), Cast(Pre_Creation_cmd as varchar), Cast(SchEMA_Option as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysschEMAArticles_Inter]
	)
Select * From hashData
