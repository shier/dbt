
With hashData as (
		Select
			HASHBYTES('MD5', concat(ReSourceIDPath, Slug, Title, Pagecontent, MetaDescription, FontawesomeIcon, Teaser, Cast(ParentreSourceGUIDEID as varchar), Cast(Depth as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ReSourceGUIDE_Inter]
	)
Select * From hashData
