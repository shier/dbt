create view "stg"."CC_MakeModel_FinalView__dbt_tmp" as
    
Select
	[ID],[CreateDate],[ModifyDate],[VehicleTypeID],[CountryID],[CategoryID],[Make],[Model],[Makeplural],[Modelplural],[RelatedModelslugs],[IsActive] 
From stg.[CC_MakeModel_Incr] 
Where [dbt_valid_to] is null
