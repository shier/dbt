{{ config(materialized='view',schema='stg')}}
Select
	[MediaID],[CustomerAccountID],[AddressID],[MediaTypeID],[Circulation],[StoryIdeas],[Created],[UpdateEventID] 
From stg.[Auct_Media_Incr] 
Where [dbt_valid_to] is null