
Select
	[LocalUserID],[ForeignUserID],[ImportedUserName] 
From stg.[AH_ImportedUserMap_Incr] 
Where [dbt_valid_to] is null