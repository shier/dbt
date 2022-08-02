{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarConditionLinkID] as int) [CarConditionLinkID],
	cast([CarID] as int) [CarID],
	cast([CarConditionID] as int) [CarConditionID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CarConditionLink_FinalView]