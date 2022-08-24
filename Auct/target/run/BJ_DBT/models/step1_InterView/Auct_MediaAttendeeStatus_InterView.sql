create view "dbo_stg"."Auct_MediaAttendeeStatus_InterView__dbt_tmp" as
    
Select
	[MEDIAATTENDEESTATUSID] [MediaAttendeeStatusID],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_MediaAttendeeStatus_Raw]
