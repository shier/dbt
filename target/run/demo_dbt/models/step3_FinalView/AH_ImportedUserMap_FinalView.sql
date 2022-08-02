create view "stg"."AH_ImportedUserMap_FinalView__dbt_tmp" as
    
Select
	[LocalUserID],[ForeignUserID],[ImportedUserName] 
From stg.[AH_ImportedUserMap_Incr] 
Where [dbt_valid_to] is null
