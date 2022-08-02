{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaAttendeeStatusID] as int) [MediaAttendeeStatusID],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_MediaAttendeeStatus_FinalView]