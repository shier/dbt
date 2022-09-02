create view "stg"."AH_Mediaassets_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[DaTestamp],[Type],[Reference],[Sha1] 
From stg.[AH_Mediaassets_Incr] 
Where [dbt_valid_to] is null
