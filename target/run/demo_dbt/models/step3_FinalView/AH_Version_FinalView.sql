create view "stg"."AH_Version_FinalView__dbt_tmp" as
    
Select
	[ID],[VersionNumber],[Status],[DaTestamp] 
From stg.[AH_Version_Incr] 
Where [dbt_valid_to] is null
