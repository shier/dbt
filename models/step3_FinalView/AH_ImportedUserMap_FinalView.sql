{{ config(materialized='view',schema='stg')}}
Select
	[LocalUserID],[ForeignUserID],[ImportedUserName] 
From stg.[AH_ImportedUserMap_Incr] 
Where [dbt_valid_to] is null