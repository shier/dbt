{{ config(materialized='table',schema='dbo')}}
Select
	cast([MakeID] as int) [MakeID],
	cast([YearID] as int) [YearID] 
From stg.[Auct_Make_Year_FinalView]