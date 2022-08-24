{{ config(materialized='view',schema='stg')}}
Select
	[SEASONID] [SeasonID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_Season_Raw]
