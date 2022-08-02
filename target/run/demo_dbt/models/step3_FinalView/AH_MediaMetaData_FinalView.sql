create view "stg"."AH_MediaMetaData_FinalView__dbt_tmp" as
    
Select
	[ID],[Name],[Value],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_MediaMetaData_Incr] 
Where [dbt_valid_to] is null
