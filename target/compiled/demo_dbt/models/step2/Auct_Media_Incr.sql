
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(MediaTypeID as varchar), Cast(UpdateEventID as varchar), Cast(CustomerAccountID as varchar), Cast(AddressID as varchar), Cast(Created as varchar), Circulation, StoryIdeas)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Media_Inter]
	)
Select * From hashData
