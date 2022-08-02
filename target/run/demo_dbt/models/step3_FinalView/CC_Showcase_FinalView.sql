create view "stg"."CC_Showcase_FinalView__dbt_tmp" as
    
Select
	[ID],[ListingID],[PaymentTypeID],[CreateDate],[ModifyDate],[EndDate],[IsActive],[SalesForceOpportunityID] 
From stg.[CC_Showcase_Incr] 
Where [dbt_valid_to] is null
