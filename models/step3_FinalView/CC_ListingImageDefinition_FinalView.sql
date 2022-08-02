{{ config(materialized='view',schema='stg')}}
Select
	[ListingImageDefinitionPK],[ShouldpopulateInitially],[ImageWidth],[ImageHeight],[Quality],[ListingImageFieldName],[FileNamefragment] 
From stg.[CC_ListingImageDefinition_Incr] 
Where [dbt_valid_to] is null