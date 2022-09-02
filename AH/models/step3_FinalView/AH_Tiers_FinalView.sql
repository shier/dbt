{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Upperboundexclusive],[Value],[Lowerboundinclusive],[CreatedOn],[UpdatedOn],[DeletedOn],[FeescheduleID],[ValueType],[LastUpdatedUser] 
From stg.[AH_Tiers_Incr] 
Where [dbt_valid_to] is null