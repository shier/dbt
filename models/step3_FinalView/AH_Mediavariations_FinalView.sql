{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[MediaassetID],[MediaID],[Name] 
From stg.[AH_Mediavariations_Incr] 
Where [dbt_valid_to] is null