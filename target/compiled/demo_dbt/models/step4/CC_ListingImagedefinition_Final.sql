
Select
	[ListingImageDefinitionPK],[ListingImageFieldName],[FileNamefragment],[ShouldpopulateInitially],[ImageWidth],[ImageHeight],[Quality] 
From stg.[CC_ListingImagedefinition_Incr] 
Where [dbt_valid_to] is null