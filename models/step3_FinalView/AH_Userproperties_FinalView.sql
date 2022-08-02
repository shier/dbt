{{ config(materialized='view',schema='stg')}}
Select
	[ID],[IntnativeValue],[UserID],[CustomFieldID],[BoolnativeValue],[CreatedOn],[UpdatedOn],[DeletedOn],[DateTimenativeValue],[StringnativeValue],[EnumnativeValue],[LastUpdatedUser],[DecimalnativeValue] 
From stg.[AH_Userproperties_Incr] 
Where [dbt_valid_to] is null