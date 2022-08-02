create view "stg"."Auct_ItemStatus_InterView__dbt_tmp" as
    
Select
	[ITEMSTATUSID] [ItemStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ItemStatus_Raw]
