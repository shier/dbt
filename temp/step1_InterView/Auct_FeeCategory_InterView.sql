{{ config(materialized='view',schema='stg')}}
Select
	[FEECATEGORYID] [FeeCategoryID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_FeeCategory_Raw]
