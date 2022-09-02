create view "stg"."AH_Eventproperties_FinalView__dbt_tmp" as
    
Select
	[ID],[StringnativeValue],[EnumnativeValue],[LastUpdatedUser],[DecimalnativeValue],[CreatedOn],[UpdatedOn],[DeletedOn],[DateTimenativeValue],[BoolnativeValue],[IntnativeValue],[AuctionEventID],[CustomFieldID] 
From stg.[AH_Eventproperties_Incr] 
Where [dbt_valid_to] is null
