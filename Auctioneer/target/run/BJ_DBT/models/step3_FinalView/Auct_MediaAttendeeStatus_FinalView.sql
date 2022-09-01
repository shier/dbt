create view "stg"."Auct_MediaAttendeeStatus_FinalView__dbt_tmp" as
    
Select
	[MediaAttendeeStatusID],[Name] 
From stg.[Auct_MediaAttendeeStatus_Incr] 
Where [dbt_valid_to] is null
