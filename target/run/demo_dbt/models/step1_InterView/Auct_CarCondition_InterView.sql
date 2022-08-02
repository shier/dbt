create view "stg"."Auct_CarCondition_InterView__dbt_tmp" as
    
Select
	[CARCONDITIONID] [CarConditionID],
	[WEBACTIVE] [WebActive],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[CARCONDITIONBIT] [CarConditionBit]
From stg.[Auct_CarCondition_Raw]
