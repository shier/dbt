{{ config(materialized='view',schema='stg')}}
Select
	[CONTENTID] [ContentID],
	[CONTENTTYPEID] [ContentTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active],
	[DATECREATED] [DateCreated]
From stg.[Auct_Content_Raw]
