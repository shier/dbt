{{ config(materialized='view',schema='stg')}}
Select
	[ID],[ListingID],[PaymentTypeID],[CreateDate],[ModifyDate],[EndDate],[IsActive],[SalesForceOpportunityID] 
From stg.[CC_Showcase_Incr] 
Where [dbt_valid_to] is null