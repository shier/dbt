create view "stg"."AH_DailyhuntEmailSubscribers_FinalView__dbt_tmp" as
    
Select
	[ID],[Email],[FirstName],[LastName],[ZipCode],[ASenthusiast],[AsBidder],[AsConsignor] 
From stg.[AH_DailyhuntEmailSubscribers_Incr] 
Where [dbt_valid_to] is null
