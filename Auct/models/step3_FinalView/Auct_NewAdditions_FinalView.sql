{{ config(materialized='view',schema='stg')}}
Select
	[NewAdditionsID],[DateCreated],[FirstName],[MiddleInitial],[LastName],[ContactID] 
From stg.[Auct_NewAdditions_Incr] 
Where [dbt_valid_to] is null