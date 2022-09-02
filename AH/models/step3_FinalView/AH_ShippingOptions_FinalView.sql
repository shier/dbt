{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[ShippingMethodID],[ListingID],[FirstItEMAmount],[AdditionalItEMAmount] 
From stg.[AH_ShippingOptions_Incr] 
Where [dbt_valid_to] is null