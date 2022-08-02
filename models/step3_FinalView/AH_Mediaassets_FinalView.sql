{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[DaTestamp],[Type],[Reference],[Sha1] 
From stg.[AH_Mediaassets_Incr] 
Where [dbt_valid_to] is null