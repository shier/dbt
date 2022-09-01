{{ config(materialized='view',schema='stg')}}
Select
	[SEARCHFORID] [SearchForID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_SearchFor_Raw]
