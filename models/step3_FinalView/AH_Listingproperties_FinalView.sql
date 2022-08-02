{{ config(materialized='view',schema='stg')}}
Select
	[ID],[DecimalnativeValue],[StringnativeValue],[EnumnativeValue],[LastUpdatedUser],[CreatedOn],[UpdatedOn],[DeletedOn],[DateTimenativeValue],[BoolnativeValue],[IntnativeValue],[ListingID],[CustomFieldID] 
From stg.[AH_Listingproperties_Incr] 
Where [dbt_valid_to] is null