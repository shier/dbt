
Select
	[ID],[Amount],[Processor],[Name],[Description],[DeletedOn],[CreatedOn],[UpdatedOn],[ListingTypeID],[EventID] 
From stg.[AH_Feeproperties_Incr] 
Where [dbt_valid_to] is null