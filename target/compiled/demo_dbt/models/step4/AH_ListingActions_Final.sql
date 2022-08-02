
Select
	[ID],[Description],[LastUpdatedUser],[Reason],[Status],[Amount],[ProxyAmount],[CreatedOn],[UpdatedOn],[DeletedOn],[Actiondttm],[Userentered],[UserID],[ListingID],[Quantity] 
From stg.[AH_ListingActions_Incr] 
Where [dbt_valid_to] is null