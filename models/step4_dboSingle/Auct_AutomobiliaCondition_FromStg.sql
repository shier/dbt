{{ config(materialized='table',schema='dbo')}}
Select
	cast([AutomobiliaConditionID] as int) [AutomobiliaConditionID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AutomobiliaCondition_FinalView]