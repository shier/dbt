
Select
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([ID] as int) [Id],
	cast([ReSourceGUIDEID] as int) [ResourceGuideId],
	cast([SequenceGroup] as int) [SequenceGroup],
	cast([IsActive] as bit) [IsActive],
	cast([LogoURL] as nvarchar(4000)) [LogoUrl],
	cast([Title] as nvarchar(4000)) [Title],
	cast([Pagecontent] as nvarchar(4000)) [PageContent],
	cast([LinkText] as nvarchar(4000)) [LinkText],
	cast([LinkURL] as nvarchar(4000)) [LinkUrl],
	cast([CalltoActionText] as nvarchar(4000)) [CallToActionText],
	cast([CalltoActionURL] as nvarchar(4000)) [CallToActionUrl] 
From stg.[CC_ReSourceGUIDEItem_FinalView]