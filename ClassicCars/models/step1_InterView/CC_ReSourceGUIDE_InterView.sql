{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([ResourceIdPath] as nvarchar(4000)) [ReSourceIDPath],
	cast([Slug] as nvarchar(4000)) [Slug],
	cast([Title] as nvarchar(4000)) [Title],
	cast([PageContent] as nvarchar(4000)) [Pagecontent],
	cast([MetaDescription] as nvarchar(4000)) [MetaDescription],
	cast([FontAwesomeIcon] as nvarchar(4000)) [FontawesomeIcon],
	cast([Teaser] as nvarchar(4000)) [Teaser],
	[IsActive] [IsActive],
	[ParentResourceGuideId] [ParentreSourceGUIDEID],
	[Depth] [Depth],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate]
From stg.[CC_ReSourceGUIDE_Raw]
