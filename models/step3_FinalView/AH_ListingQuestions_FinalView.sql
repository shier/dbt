{{ config(materialized='view',schema='stg')}}
Select
	[ID],[UserID],[ListingID],[CreatedOn],[UpdatedOn],[DeletedOn],[UserName],[Question],[Answer] 
From stg.[AH_ListingQuestions_Incr] 
Where [dbt_valid_to] is null