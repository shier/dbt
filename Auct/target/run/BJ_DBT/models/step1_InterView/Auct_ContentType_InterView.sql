create view "dbo_stg"."Auct_ContentType_InterView__dbt_tmp" as
    
Select
	[CONTENTTYPEID] [ContentTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_ContentType_Raw]
