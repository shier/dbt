create view "stg"."AH_ListingTypeproperties_FinalView__dbt_tmp" as
    
Select
	[ID],[StringnativeValue],[EnumnativeValue],[LastUpdatedUser],[Scope],[DecimalnativeValue],[DeletedOn],[DateTimenativeValue],[CreatedOn],[UpdatedOn],[IntnativeValue],[CustomFieldID],[ListingTypeID],[BoolnativeValue] 
From stg.[AH_ListingTypeproperties_Incr] 
Where [dbt_valid_to] is null
