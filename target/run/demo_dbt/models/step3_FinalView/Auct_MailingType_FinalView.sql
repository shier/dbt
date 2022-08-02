create view "stg"."Auct_MailingType_FinalView__dbt_tmp" as
    
Select
	[MailingTypeID],[Name],[Subscribable],[Created],[UpdateEventID] 
From stg.[Auct_MailingType_Incr] 
Where [dbt_valid_to] is null
