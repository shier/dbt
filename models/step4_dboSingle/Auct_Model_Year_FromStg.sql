{{ config(materialized='table',schema='dbo')}}
Select
	cast([ModelID] as int) [ModelID],
	cast([YearID] as int) [YearID] 
From stg.[Auct_Model_Year_FinalView]