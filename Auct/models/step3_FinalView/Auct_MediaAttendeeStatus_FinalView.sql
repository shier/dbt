{{ config(materialized='view',schema='stg')}}
Select
	[MediaAttendeeStatusID],[Name] 
From stg.[Auct_MediaAttendeeStatus_Incr] 
Where [dbt_valid_to] is null