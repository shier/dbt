create view "dbo_stg"."Auct_AuthenticStatus_InterView__dbt_tmp" as
    
Select
	[AUTHENTICSTATUSID] [AuthenticStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([BIDGENERATORTEXT] as nvarchar(4000)) [BidGeneratorText],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AuthenticStatus_Raw]
