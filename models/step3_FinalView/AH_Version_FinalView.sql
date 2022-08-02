{{ config(materialized='view',schema='stg')}}
Select
	[ID],[VersionNumber],[Status],[DaTestamp] 
From stg.[AH_Version_Incr] 
Where [dbt_valid_to] is null