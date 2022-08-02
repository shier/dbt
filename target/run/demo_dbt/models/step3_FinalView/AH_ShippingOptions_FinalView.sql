create view "stg"."AH_ShippingOptions_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[ShippingMethodID],[ListingID],[FirstItEMAmount],[AdditionalItEMAmount] 
From stg.[AH_ShippingOptions_Incr] 
Where [dbt_valid_to] is null
