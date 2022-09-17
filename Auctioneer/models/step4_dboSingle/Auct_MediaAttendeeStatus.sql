{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaAttendeeStatusID] as int) [MEDIAATTENDEESTATUSID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_MediaAttendeeStatus_FinalView]