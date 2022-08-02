
Select
	[ID],[UserID],[ListingID],[UpdatedOn],[DeletedOn],[CreatedOn],[UserName],[Question],[Answer] 
From stg.[AH_ListingQuestions_Incr] 
Where [dbt_valid_to] is null