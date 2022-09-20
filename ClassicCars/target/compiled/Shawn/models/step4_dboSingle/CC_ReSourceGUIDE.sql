
Select
	cast([ReSourceIDPath] as nvarchar(4000)) [ResourceIdPath],
	cast([Slug] as nvarchar(4000)) [Slug],
	cast([Title] as nvarchar(4000)) [Title],
	cast([Pagecontent] as nvarchar(4000)) [PageContent],
	cast([MetaDescription] as nvarchar(4000)) [MetaDescription],
	cast([FontawesomeIcon] as nvarchar(4000)) [FontAwesomeIcon],
	cast([Teaser] as nvarchar(4000)) [Teaser],
	cast([IsActive] as bit) [IsActive],
	cast([ID] as int) [Id],
	cast([ParentreSourceGUIDEID] as int) [ParentResourceGuideId],
	cast([Depth] as int) [Depth],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_ReSourceGUIDE_FinalView]