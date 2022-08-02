{{ config(materialized='view',schema='stg')}}
Select
	[PROPERTYTYPEID] [PropertyTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[KEY] [Key],
	[ACTIVE] [Active]
From stg.[Auct_PropertyType_Raw]
