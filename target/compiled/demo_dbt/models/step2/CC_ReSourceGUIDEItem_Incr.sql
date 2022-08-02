
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsActive as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(StartDate as varchar), Cast(EndDate as varchar), Cast(ReSourceGUIDEID as varchar), Cast(SequenceGroup as varchar), LogoURL, Title, Pagecontent, LinkText, LinkURL, CalltoActionText, CalltoActionURL)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ReSourceGUIDEItem_Inter]
	)
Select * From hashData
