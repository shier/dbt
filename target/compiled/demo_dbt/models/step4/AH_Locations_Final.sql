
Select
	[ID],[LastUpdatedUser],[Name],[Description],[Amount],[CreatedOn],[UpdatedOn],[DeletedOn],[PayToproceed] 
From stg.[AH_Locations_Incr] 
Where [dbt_valid_to] is null