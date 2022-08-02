
Select
	[ID],[CreateDate],[ModifyDate],[VehicleTypeID],[CountryID],[CategoryID],[IsActive],[Make],[Model],[Makeplural],[Modelplural],[RelatedModelslugs] 
From stg.[CC_MakeModel_Incr] 
Where [dbt_valid_to] is null