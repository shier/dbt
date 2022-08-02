{{ config(materialized='view',schema='stg')}}
Select
	[ModelID],[YearID] 
From [Auct_Model_Year_Incr]