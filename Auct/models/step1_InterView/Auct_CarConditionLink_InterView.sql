{{ config(materialized='view',schema='stg')}}
Select
	[CARCONDITIONLINKID] [CarConditionLinkID],
	[CARID] [CarID],
	[CARCONDITIONID] [CarConditionID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarConditionLink_Raw]
