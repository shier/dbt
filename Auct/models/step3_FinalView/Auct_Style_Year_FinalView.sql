{{ config(materialized='view',schema='stg')}}
Select
	[StyleID],[YearID] 
From [Auct_Style_Year_Incr]