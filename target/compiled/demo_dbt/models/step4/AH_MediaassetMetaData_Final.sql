
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[MediaassetID],[MediaMetaDataID] 
From stg.[AH_MediaassetMetaData_Incr] 
Where [dbt_valid_to] is null