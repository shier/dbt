create view "stg"."AH_Feeproperties_FinalView__dbt_tmp" as
    
Select
	[ID],[Processor],[Name],[Description],[Amount],[CreatedOn],[UpdatedOn],[DeletedOn],[ListingTypeID],[EventID] 
From stg.[AH_Feeproperties_Incr] 
Where [dbt_valid_to] is null
