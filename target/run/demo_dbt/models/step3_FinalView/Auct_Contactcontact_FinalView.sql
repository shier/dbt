create view "stg"."Auct_Contactcontact_FinalView__dbt_tmp" as
    
Select
	[ContactcontactID],[ContactTypeID],[CustomerAccountID],[ContactTitle],[Created],[UpdateEventID] 
From stg.[Auct_Contactcontact_Incr] 
Where [dbt_valid_to] is null
