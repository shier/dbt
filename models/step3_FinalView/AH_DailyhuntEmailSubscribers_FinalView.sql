{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Email],[FirstName],[LastName],[ZipCode],[ASenthusiast],[AsBidder],[AsConsignor] 
From stg.[AH_DailyhuntEmailSubscribers_Incr] 
Where [dbt_valid_to] is null