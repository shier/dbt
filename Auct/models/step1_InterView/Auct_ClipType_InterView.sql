{{ config(materialized='view',schema='stg')}}
Select
	[CLIPTYPEID] [ClipTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_ClipType_Raw]
