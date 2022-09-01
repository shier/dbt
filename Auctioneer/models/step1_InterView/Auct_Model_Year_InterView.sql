{{ config(materialized='view',schema='stg')}}
Select
	[MODELID] [ModelID],
	[YEARID] [YearID]
From stg.[Auct_Model_Year_Raw]
