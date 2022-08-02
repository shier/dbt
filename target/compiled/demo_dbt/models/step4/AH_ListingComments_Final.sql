
Select
	[ID],[UserID],[ListingID],[ParentID],[ReportCount],[IsBID],[Approved],[CreatedOn],[UpdatedOn],[DeletedOn],[UserName],[Comment] 
From stg.[AH_ListingComments_Incr] 
Where [dbt_valid_to] is null