create view "stg"."Auct_PropertyType_InterView__dbt_tmp" as
    
Select
	[PROPERTYTYPEID] [PropertyTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[KEY] [Key_C],
	[ACTIVE] [Active]
From stg.[Auct_PropertyType_Raw]
