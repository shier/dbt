{{ config(materialized='view',schema='stg')}}
Select
	[EventTypeID],[Name],[ImageURL],[CanHaveChildren],[ClassName],[Description],[DeActiveImageURL] 
From stg.[Auct_EventType_Incr] 
Where [dbt_valid_to] is null