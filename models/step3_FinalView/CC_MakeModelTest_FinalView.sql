{{ config(materialized='view',schema='stg')}}
Select
	[ID],[VehicleTypeID],[CountryID],[CreateDate],[ModifyDate],[IsActive],[Make],[Model],[Makeplural],[Modelplural],[Makeslug],[Modelslug],[RelatedModelslugs] 
From stg.[CC_MakeModelTest_Incr] 
Where [dbt_valid_to] is null