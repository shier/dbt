{{ config(materialized='view',schema='stg')}}
Select
	[StateAbbreviation],[County] 
From [Auct_County_Incr]