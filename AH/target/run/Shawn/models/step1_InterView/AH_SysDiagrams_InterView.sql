create view "stg"."AH_SysDiagrams_InterView__dbt_tmp" as
    
Select
	[diagram_id] [Diagram_ID],
	[version] [Version],
	[principal_id] [Principal_ID],
	cast([definition] as nvarchar(4000)) [Definition],
	cast([name] as nvarchar(4000)) [Name]
From stg.[AH_SysDiagrams_Raw]
