create view "stg"."AH_ListingsReserveHistory_FinalView__dbt_tmp" as
    
Select
	[ID],[ListingID],[CreatedOn],[UpdatedOn],[DeletedOn],[OldReserve],[NewReserve] 
From stg.[AH_ListingsReserveHistory_Incr] 
Where [dbt_valid_to] is null
