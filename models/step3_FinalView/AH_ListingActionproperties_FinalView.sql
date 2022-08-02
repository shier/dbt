{{ config(materialized='view',schema='stg')}}
Select
	[ID],[BoolnativeValue],[DecimalnativeValue],[CustomFieldID],[IntnativeValue],[ListingActionID],[CreatedOn],[UpdatedOn],[DeletedOn],[DateTimenativeValue],[StringnativeValue],[EnumnativeValue],[LastUpdatedUser] 
From stg.[AH_ListingActionproperties_Incr] 
Where [dbt_valid_to] is null