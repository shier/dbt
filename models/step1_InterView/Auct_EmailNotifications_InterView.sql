{{ config(materialized='view',schema='stg')}}
Select
	[EMAILNOTIFICATIONID] [EmailNotificationID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([DESCRIPTION] as nvarchar(4000)) [Description]
From stg.[Auct_EmailNotifications_Raw]
