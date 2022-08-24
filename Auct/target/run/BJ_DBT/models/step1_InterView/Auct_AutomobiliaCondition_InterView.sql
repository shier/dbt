create view "stg"."Auct_AutomobiliaCondition_InterView__dbt_tmp" as
    
Select
	[AUTOMOBILIACONDITIONID] [AutomobiliaConditionID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AutomobiliaCondition_Raw]
