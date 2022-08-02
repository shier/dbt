{{ config(materialized='view',schema='stg')}}
Select
	[ID],[StringnativeValue],[EnumnativeValue],[LastUpdatedUser],[DecimalnativeValue],[CreatedOn],[UpdatedOn],[DeletedOn],[DateTimenativeValue],[BoolnativeValue],[IntnativeValue],[AuctionEventID],[CustomFieldID] 
From stg.[AH_Eventproperties_Incr] 
Where [dbt_valid_to] is null