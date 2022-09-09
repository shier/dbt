{{ config(materialized='view',schema='stg')}}
Select
	[AUTOMOBILIACONDITIONID] [AutomobiliaConditionID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AutomobiliaCondition_Raw]
