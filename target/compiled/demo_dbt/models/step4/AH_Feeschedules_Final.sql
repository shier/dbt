
Select
	[ID],[PayToproceed],[EventID],[ListingTypeID],[CreatedOn],[UpdatedOn],[DeletedOn],[Description],[LastUpdatedUser],[Name] 
From stg.[AH_Feeschedules_Incr] 
Where [dbt_valid_to] is null