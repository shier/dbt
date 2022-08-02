{{ config(materialized='view',schema='stg')}}
Select
	[CarInfoID],[Horsepower],[OriginalHorsepower] 
From [Auct_AA_WebData_Incr]