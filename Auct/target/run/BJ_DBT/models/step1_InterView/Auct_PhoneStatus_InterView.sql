create view "dbo_stg"."Auct_PhoneStatus_InterView__dbt_tmp" as
    
Select
	[PHONESTATUSID] [PhoneStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_PhoneStatus_Raw]
