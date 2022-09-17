{{ config(materialized='table',schema='dbo')}}
Select
	cast([StyleID] as int) [STYLEID],
	cast([YearID] as int) [YEARID] 
From stg.[Auct_Style_Year_FinalView]