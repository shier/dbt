create view "stg"."Auct_NewAdditions_FinalView__dbt_tmp" as
    
Select
	[NewAdditionsID],[DateCreated],[FirstName],[MiddleInitial],[LastName],[ContactID] 
From stg.[Auct_NewAdditions_Incr] 
Where [dbt_valid_to] is null
