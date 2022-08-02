create view "stg"."AH_ListingQuestions_FinalView__dbt_tmp" as
    
Select
	[ID],[UserID],[ListingID],[CreatedOn],[UpdatedOn],[DeletedOn],[UserName],[Question],[Answer] 
From stg.[AH_ListingQuestions_Incr] 
Where [dbt_valid_to] is null
