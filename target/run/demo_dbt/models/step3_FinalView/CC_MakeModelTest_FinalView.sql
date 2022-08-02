create view "stg"."CC_MakeModelTest_FinalView__dbt_tmp" as
    
Select
	[ID],[VehicleTypeID],[CountryID],[CreateDate],[ModifyDate],[IsActive],[Make],[Model],[Makeplural],[Modelplural],[Makeslug],[Modelslug],[RelatedModelslugs] 
From stg.[CC_MakeModelTest_Incr] 
Where [dbt_valid_to] is null
