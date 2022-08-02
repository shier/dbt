
Select
	[ID],[VehicleTypeID],[CountryID],[CreateDate],[ModifyDate],[IsActive],[Modelplural],[Makeslug],[Modelslug],[RelatedModelslugs],[Make],[Model],[Makeplural] 
From stg.[CC_MakeModelTest_Incr] 
Where [dbt_valid_to] is null