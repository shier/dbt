{{ config(materialized='view',schema='stg')}}
Select
	[ID],[ProvIDErName],[ProvIDErUserID],[CreatedOn],[UpdatedOn],[DeletedOn],[LocalUserID] 
From stg.[AH_ExternalUserIDs_Incr] 
Where [dbt_valid_to] is null