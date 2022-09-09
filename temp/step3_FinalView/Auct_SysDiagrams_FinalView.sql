{{ config(materialized='view',schema='stg')}}
Select
	[Name],[Principal_ID],[Diagram_ID],[Version],[Definition] 
From [Auct_SysDiagrams_Incr] 
Where [dbt_valid_to] is null