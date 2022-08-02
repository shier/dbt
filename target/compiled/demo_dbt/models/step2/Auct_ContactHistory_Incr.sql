
With hashData as (
		Select
			HASHBYTES('MD5', concat(Note, ModifiedBy, Archive, Cast(Created as varchar), Cast(Internaluse as varchar), Cast(NoteID as varchar), Cast(ContactID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ContactHistory_Inter]
	)
Select * From hashData
