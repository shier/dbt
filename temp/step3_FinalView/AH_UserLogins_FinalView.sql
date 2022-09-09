{{ config(materialized='view',schema='stg')}}
Select
	[LoginprovIDEr],[ProvIDErKey],[UserID] 
From [AH_UserLogins_Incr] 
Where [dbt_valid_to] is null