{{ config(materialized='view',schema='stg')}}
Select
	[Diagram_ID],[Version],[Principal_ID],[Definition],[Name] 
From stg.[AH_SysDiagrams_Incr] 
Where [dbt_valid_to] is null