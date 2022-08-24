{{ config(materialized='view',schema='stg')}}
Select
	[MakeID],[YearID] 
From [Auct_Make_Year_Incr]