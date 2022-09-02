create view "stg"."AH_Listingdecorations_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[DecorationID],[ListingID] 
From stg.[AH_Listingdecorations_Incr] 
Where [dbt_valid_to] is null
