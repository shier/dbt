create view "stg"."Auct_AddressStatus_InterView__dbt_tmp" as
    
Select
	[ADDRESSSTATUSID] [AddressStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AddressStatus_Raw]
