create view "stg"."AH_Media_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[GUID],[DefaultvariationName],[Loader],[Saver],[LastUpdatedUser],[ConText],[Status] 
From stg.[AH_Media_Incr] 
Where [dbt_valid_to] is null
