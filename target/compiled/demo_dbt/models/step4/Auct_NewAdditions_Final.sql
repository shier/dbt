
Select
	[NewAdditionsID],[DateCreated],[ContactID],[FirstName],[MiddleInitial],[LastName] 
From stg.[Auct_NewAdditions_Incr] 
Where [dbt_valid_to] is null