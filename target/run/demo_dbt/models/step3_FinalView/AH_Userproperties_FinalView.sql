create view "stg"."AH_Userproperties_FinalView__dbt_tmp" as
    
Select
	[ID],[IntnativeValue],[UserID],[CustomFieldID],[BoolnativeValue],[CreatedOn],[UpdatedOn],[DeletedOn],[DateTimenativeValue],[StringnativeValue],[EnumnativeValue],[LastUpdatedUser],[DecimalnativeValue] 
From stg.[AH_Userproperties_Incr] 
Where [dbt_valid_to] is null
