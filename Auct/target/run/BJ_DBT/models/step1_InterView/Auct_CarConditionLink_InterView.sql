create view "dbo_stg"."Auct_CarConditionLink_InterView__dbt_tmp" as
    
Select
	[CARCONDITIONLINKID] [CarConditionLinkID],
	[CARID] [CarID],
	[CARCONDITIONID] [CarConditionID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarConditionLink_Raw]
