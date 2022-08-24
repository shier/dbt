{{ config(materialized='view',schema='stg')}}
Select
	[CONTENTTYPEID] [ContentTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_ContentType_Raw]
