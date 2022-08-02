{{ config(materialized='table',schema='dbo')}}
Select
	cast([EmailNotificationID] as int) [EmailNotificationID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[Auct_EmailNotifications_FinalView]