
Select
	[ID],[Email],[FirstName],[LastName],[ASenthusiast],[AsBidder],[AsConsignor],[ZipCode] 
From stg.[AH_DailyhuntEmailsubscribers_Incr] 
Where [dbt_valid_to] is null