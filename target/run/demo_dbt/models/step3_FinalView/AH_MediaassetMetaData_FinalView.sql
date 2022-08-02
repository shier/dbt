create view "stg"."AH_MediaassetMetaData_FinalView__dbt_tmp" as
    
Select
	[ID],[MediaassetID],[MediaMetaDataID],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_MediaassetMetaData_Incr] 
Where [dbt_valid_to] is null
