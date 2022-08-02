create view "stg"."AH_BannedUsers_FinalView__dbt_tmp" as
    
Select
	[ID],[Lastip],[UserName],[FName],[LName],[IsLockedOut],[UserID] 
From stg.[AH_BannedUsers_Incr] 
Where [dbt_valid_to] is null
