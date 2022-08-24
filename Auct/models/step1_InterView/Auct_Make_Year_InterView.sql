{{ config(materialized='view',schema='stg')}}
Select
	[MAKEID] [MakeID],
	[YEARID] [YearID]
From stg.[Auct_Make_Year_Raw]
