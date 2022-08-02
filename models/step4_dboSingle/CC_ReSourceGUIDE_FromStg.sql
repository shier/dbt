{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([ReSourceIDPath] as nvarchar(4000)) [ReSourceIDPath],
	cast([Slug] as nvarchar(4000)) [Slug],
	cast([Title] as nvarchar(4000)) [Title],
	cast([Pagecontent] as nvarchar(4000)) [Pagecontent],
	cast([MetaDescription] as nvarchar(4000)) [MetaDescription],
	cast([FontawesomeIcon] as nvarchar(4000)) [FontawesomeIcon],
	cast([Teaser] as nvarchar(4000)) [Teaser],
	cast([IsActive] as bit) [IsActive],
	cast([ParentreSourceGUIDEID] as int) [ParentreSourceGUIDEID],
	cast([Depth] as int) [Depth],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_ReSourceGUIDE_FinalView]