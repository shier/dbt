{{ config(materialized='table',schema='dbo')}}
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([Principal_ID] as int) [Principal_ID],
	cast([Diagram_ID] as int) [Diagram_ID],
	cast([Version] as int) [Version],
	cast([Definition] as varbinary(8000)) [Definition] 
From stg.[CC_SysDiagrams_FinalView]