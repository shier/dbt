{{ config(materialized='table',schema='dbo')}}
Select
	cast([Diagram_ID] as int) [Diagram_ID],
	cast([Version] as int) [Version],
	cast([Principal_ID] as int) [Principal_ID],
	cast([Definition] as varbinary(8000)) [Definition],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[AH_SysDiagrams_FinalView]