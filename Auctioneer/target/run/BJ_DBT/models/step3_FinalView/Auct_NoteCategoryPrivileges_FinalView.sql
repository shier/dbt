create view "stg"."Auct_NoteCategoryPrivileges_FinalView__dbt_tmp" as
    
Select
	[NoteCategoryID],[PrivilegeID] 
From stg.[Auct_NoteCategoryPrivileges_Incr] 
Where [dbt_valid_to] is null
