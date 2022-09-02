create view "stg"."AH_UserLogins_FinalView__dbt_tmp" as
    
Select
	[LoginprovIDEr],[ProvIDErKey],[UserID] 
From [AH_UserLogins_Incr]
