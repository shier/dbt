create view "stg"."Auct_Content_InterView__dbt_tmp" as
    
Select
	[CONTENTID] [ContentID],
	[CONTENTTYPEID] [ContentTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active],
	[DATECREATED] [DateCreated]
From stg.[Auct_Content_Raw]
