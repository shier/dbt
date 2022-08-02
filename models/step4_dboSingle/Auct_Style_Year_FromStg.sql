{{ config(materialized='table',schema='dbo')}}
Select
	cast([StyleID] as int) [StyleID],
	cast([YearID] as int) [YearID] 
From stg.[Auct_Style_Year_FinalView]