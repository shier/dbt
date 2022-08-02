create view "stg"."Auct_EventType_FinalView__dbt_tmp" as
    
Select
	[EventTypeID],[Name],[ImageURL],[CanHaveChildren],[ClassName],[Description],[DeActiveImageURL] 
From stg.[Auct_EventType_Incr] 
Where [dbt_valid_to] is null
