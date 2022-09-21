
Select
	cast([Active] as bit) [ACTIVE],
	cast([EmailNotificationID] as int) [EMAILNOTIFICATIONID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Description] as nvarchar(4000)) [DESCRIPTION] 
From stg.[Auct_EmailNotifications_FinalView]