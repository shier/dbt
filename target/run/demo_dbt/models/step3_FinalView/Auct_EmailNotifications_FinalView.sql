create view "stg"."Auct_EmailNotifications_FinalView__dbt_tmp" as
    
Select
	[EmailNotificationID],[Active],[Name],[Description] 
From stg.[Auct_EmailNotifications_Incr] 
Where [dbt_valid_to] is null
