{{ config(materialized='view',schema='stg')}}
Select
	[STYLEID] [StyleID],
	[YEARID] [YearID]
From stg.[Auct_Style_Year_Raw]
