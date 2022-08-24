create view "dbo_stg"."Auct_SysDiagrams_InterView__dbt_tmp" as
    
Select
	cast([name] as nvarchar(4000)) [Name],
	[principal_id] [Principal_ID],
	[diagram_id] [Diagram_ID],
	[version] [Version],
	cast([definition] as nvarchar(4000)) [Definition]
From stg.[Auct_SysDiagrams_Raw]
