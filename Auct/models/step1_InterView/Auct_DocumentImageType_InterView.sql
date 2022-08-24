{{ config(materialized='view',schema='stg')}}
Select
	[DOCUMENTIMAGETYPEID] [DocumentImageTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_DocumentImageType_Raw]
