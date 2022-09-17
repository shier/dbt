{{ config(materialized='table',schema='dbo')}}
Select
	cast([ModelID] as int) [MODELID],
	cast([YearID] as int) [YEARID] 
From stg.[Auct_Model_Year_FinalView]