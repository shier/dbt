{{ config(materialized='view',schema='stg')}}
Select
	[MEDIAATTENDEESTATUSID] [MediaAttendeeStatusID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_MediaAttendeeStatus_Raw]
