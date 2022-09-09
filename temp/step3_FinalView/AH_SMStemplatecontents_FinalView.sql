{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Name],[Body],[UpdatedOn],[DeletedOn],[CreatedOn] 
From stg.[AH_SMStemplatecontents_Incr] 
Where [dbt_valid_to] is null