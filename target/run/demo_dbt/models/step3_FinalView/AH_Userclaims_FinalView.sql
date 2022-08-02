create view "stg"."AH_Userclaims_FinalView__dbt_tmp" as
    
Select
	[ID],[UserID],[ClaimType],[ClaimValue] 
From stg.[AH_Userclaims_Incr] 
Where [dbt_valid_to] is null
