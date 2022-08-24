create view "stg"."Auct_Media_FinalView__dbt_tmp" as
    
Select
	[MediaID],[CustomerAccountID],[AddressID],[MediaTypeID],[Circulation],[StoryIdeas],[Created],[UpdateEventID] 
From stg.[Auct_Media_Incr] 
Where [dbt_valid_to] is null
