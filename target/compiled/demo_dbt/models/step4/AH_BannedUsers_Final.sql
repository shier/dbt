
Select
	[ID],[IsLockedOut],[Lastip],[UserName],[FName],[LName],[UserID] 
From stg.[AH_BannedUsers_Incr] 
Where [dbt_valid_to] is null