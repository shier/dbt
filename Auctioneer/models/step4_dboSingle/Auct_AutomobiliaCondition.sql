{{ config(materialized='table',schema='dbo')}}
Select
	cast([AutomobiliaConditionID] as int) [AUTOMOBILIACONDITIONID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AutomobiliaCondition_FinalView]