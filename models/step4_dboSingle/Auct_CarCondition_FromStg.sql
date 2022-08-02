{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarConditionID] as int) [CarConditionID],
	cast([WebActive] as bit) [WebActive],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([CarConditionBit] as int) [CarConditionBit] 
From stg.[Auct_CarCondition_FinalView]