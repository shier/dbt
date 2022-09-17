{{ config(materialized='table',schema='dbo')}}
Select
	cast([Principal_ID] as int) [principal_id],
	cast([Diagram_ID] as int) [diagram_id],
	cast([Version] as int) [version],
	cast([Name] as nvarchar(4000)) [name],
	cast([Definition] as varbinary(8000)) [definition] 
From stg.[CC_SysDiagrams_FinalView]