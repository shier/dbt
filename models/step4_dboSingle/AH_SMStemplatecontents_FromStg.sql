{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Body] as nvarchar(4000)) [Body],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn] 
From stg.[AH_SMStemplatecontents_FinalView]