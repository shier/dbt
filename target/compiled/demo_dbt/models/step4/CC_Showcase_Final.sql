
Select
	[ID],[CreateDate],[ModifyDate],[EndDate],[ListingID],[PaymentTypeID],[IsActive],[SalesForceOpportunityID] 
From stg.[CC_Showcase_Incr] 
Where [dbt_valid_to] is null