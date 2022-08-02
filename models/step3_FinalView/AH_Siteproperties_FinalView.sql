{{ config(materialized='view',schema='stg')}}
Select
	[ID],[DecimalnativeValue],[BoolnativeValue],[IntnativeValue],[CustomFieldID],[CreatedOn],[UpdatedOn],[DeletedOn],[DateTimenativeValue],[StringnativeValue],[EnumnativeValue],[LastUpdatedUser] 
From stg.[AH_Siteproperties_Incr] 
Where [dbt_valid_to] is null