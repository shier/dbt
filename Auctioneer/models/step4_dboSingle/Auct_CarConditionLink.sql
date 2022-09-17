{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarConditionLinkID] as int) [CARCONDITIONLINKID],
	cast([CarID] as int) [CARID],
	cast([CarConditionID] as int) [CARCONDITIONID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_CarConditionLink_FinalView]