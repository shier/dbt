{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Lastip],[UserName],[FName],[LName],[IsLockedOut],[UserID] 
From stg.[AH_BannedUsers_Incr] 
Where [dbt_valid_to] is null