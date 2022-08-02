{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[CC_EngineCondition_FinalView]