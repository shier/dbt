{{ config(materialized='view',schema='stg')}}
Select
	[SEARCHBYID] [SearchByID],
	[ACTIVE] [Active],
	[SEARCHFORID] [SearchForID],
	cast([NAME] as nvarchar(4000)) [Name],
	[DISPLAYORDER] [DisplayOrder]
From stg.[Auct_SearchBy_Raw]
